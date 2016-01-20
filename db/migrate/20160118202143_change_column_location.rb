class ChangeColumnLocation < ActiveRecord::Migration
  def change
  	change_column :ships , :location , :integer
  end
end
