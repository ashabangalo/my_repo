class CreateSprintCards < ActiveRecord::Migration[5.1]
  def change
    create_table :sprint_cards do |t|
      t.integer "leankit_sprint_id", null: false
      t.string "sprint_title"
      t.datetime "sprint_start_date"
      t.datetime "sprint_end_date"
      t.integer "leankit_board_id", null: false
      t.datetime "sprint_created_date"
      t.datetime "sprint_updated_date"
      t.integer "sprint_points"
      t.timestamps
    end
  end
end
