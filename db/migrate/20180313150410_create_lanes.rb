class CreateLanes < ActiveRecord::Migration[5.1]
  def change
    create_table :lanes do |t|
      t.integer "leankit_lane_id", null: false
      t.string "lane_name"
      t.integer "parent_lane_id"
      t.integer "lane_card_count"
      t.integer "leankit_board_id", null: false
      t.integer "lane_columns"
      t.string "lane_type"
      t.timestamps
    end
  end
end
