class RemoveLocationColumn < ActiveRecord::Migration
  def change
  	remove_column :ships , :location 
  end
end
