class RemoveLocation < ActiveRecord::Migration
  def change
  	remove_column :ships , :current_location
  end
end
