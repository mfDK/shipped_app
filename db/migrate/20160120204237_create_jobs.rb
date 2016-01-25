class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.integer :container_need
      t.string :cargo
      t.decimal :cost
      t.string :origin
      t.string :destination
      t.references :user, index: true, foreign_key: true
      t.references :ship, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
