class CreateLanes < ActiveRecord::Migration[5.1]
  def change
    create_table :lanes do |t|
      t.integer :leankit_lane_id, null: false
      t.string :lanename
      t.integer :parentlane_id
      t.integer :cardcount
      t.integer :leankit_board_id, null: false
      t.integer :lanecolumns
      t.string :lanetype

      t.timestamps
    end
  end
end
