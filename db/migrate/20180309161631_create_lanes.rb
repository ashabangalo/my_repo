class CreateLanes < ActiveRecord::Migration[5.1]
  def change
    create_table :lanes do |t|
      t.integer :lane_id, null: false
      t.string :lanename
      t.integer :parentlane_id
      t.integer :cardcount
      t.integer :board_id
      t.integer :lanecolumns
      t.string :lanetype

      t.timestamps
    end
    add_index :lanes, :lane_id, unique: true

  end
end
