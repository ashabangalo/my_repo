class CreateSprintcards < ActiveRecord::Migration[5.1]
  def change
    create_table :sprintcards do |t|
      t.integer :leankit_sprintcard_id
      t.integer :leankit_sprint_id
      t.integer :leankit_card_id
      t.datetime :addeddate
      t.datetime :deleteddate

      t.timestamps
    end
  end
end
