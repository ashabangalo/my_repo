class CreateSprints < ActiveRecord::Migration[5.1]
  def change
    create_table :sprints do |t|
      t.integer :leankit_sprint_id, null: false
      t.string :sprinttitle
      t.datetime :startdate
      t.time :enddate
      t.integer :leankit_board_id, null: false
      t.datetime :createddate
      t.datetime :updateddate
      t.integer :points

      t.timestamps
    end
  end
end
