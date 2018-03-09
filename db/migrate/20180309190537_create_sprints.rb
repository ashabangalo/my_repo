class CreateSprints < ActiveRecord::Migration[5.1]
  def change
    create_table :sprints do |t|
      t.integer :sprint_id, null:false
      t.string :sprinttitle
      t.datetime :startdate
      t.time :enddate
      t.integer :board_id
      t.datetime :createddate
      t.datetime :updateddate
      t.integer :points

      t.timestamps
    end
    add_foreign_key :sprints, :boards, column: :board_id
  end
end
