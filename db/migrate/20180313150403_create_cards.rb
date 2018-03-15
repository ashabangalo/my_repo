class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.integer "leankit_card_id", null: false
      t.string "card_title"
      t.integer "leankit_lane_id", null: false
      t.integer "parent_card_id"
      t.string "card_type"
      t.string "task_type"
      t.integer "card_size"
      t.datetime "planned_start_date"
      t.datetime "planned_end_date"
      t.datetime "actual_start_date"
      t.datetime "actual_end_date"
      t.timestamps
    end
  end
end
