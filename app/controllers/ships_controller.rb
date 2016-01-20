class ShipsController < ApplicationController
  def index
  	@all_ships = Ship.all
  	@my_ships = Ship.where(user_id: current_user)
  end

  def show
  	@ship = Ship.find(params[:id])
  end

  def new
  	@list_locations = ["beirut","singapore","naples"]
  	@ship = Ship.new
  end

  def create
  	@ship = current_user.ships.build(ship_params)
  	if @ship.save
  		redirect_to ships_path
  	else
  		redirect_to new_ship_path
  	end
  end

  def edit
  	@ship = Ship.find(params[:id])
  end

  def update
  	@ship = Ship.find(params[:id])
  	@ship.update(ship_params)
  	@ship.save 
  	redirect_to ships_path
  end

  def destroy
  	@ship = Ship.find(params[:id])
  	@ship.destroy
  end

  private
  def ship_params
  	params.require(:ship).permit(:ship_name,:container_qty,:current_location)
  end

end
