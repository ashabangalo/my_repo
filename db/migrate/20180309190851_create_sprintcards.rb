class CreateSprintcards < ActiveRecord::Migration[5.1]
  def change
    create_table :sprintcards do |t|
      t.integer :sprintcard_id
      t.integer :sprint_id
      t.integer :card_id
      t.datetime :addeddate
      t.datetime :deleteddate

      t.timestamps
    end
    add_foreign_key :sprintcards, :sprints, column: :sprint_id
    add_foreign_key :sprintcards, :cards, column: :card_id
  end
end
