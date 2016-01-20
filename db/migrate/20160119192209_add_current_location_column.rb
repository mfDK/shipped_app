class AddCurrentLocationColumn < ActiveRecord::Migration
  def change
  	add_column :ships , :current_location , :string
  end
end
