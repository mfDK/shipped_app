class UserfollowshipsController < ApplicationController
	def create
		# When the current user is logged in, the user should be able to see
		# all ships and see a button next to each ship to follow or unfollow
			# When a user clicks the follow button, a record is created in the
			# Userfollowships table where the user_id is the current_user and 
			# the ship_id is filled in from that instance of the ship
			@ship = Ship.find(params[:ship_id])
			current_user.userfollowships.build(@ship)
			redirect_to :back
	end
	def destroy
		# If the relationship between a ship and a user exists, destroy the 
		# relationship if the user chooses to "unfollow" a ship. Find the 
		# record of the relationship and destroy it if the user wants to 
		# unfollow the ship. 
		@ship = Userfollowship.where(user_id: current_user , ship_id: params[:id])
		@ship.destroy
		redirect_to :back
	end
end
