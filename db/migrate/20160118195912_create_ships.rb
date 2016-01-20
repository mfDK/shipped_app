class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :ship_name
      t.integer :container_qty
      t.string :location
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
