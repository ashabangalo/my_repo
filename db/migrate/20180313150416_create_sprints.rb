class CreateSprints < ActiveRecord::Migration[5.1]
  def change
    create_table :sprints do |t|
      t.integer "leankit_sprint_card_id"
      t.integer "leankit_sprint_id"
      t.integer "leankit_card_id"
      t.datetime "sprint_card_added_date"
      t.datetime "sprint_card_deleted_date"
      t.timestamps
    end
  end
end
