class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.integer :leankit_card_id, null: false
      t.string :cardtitle
      t.integer :leankit_lane_id, null: false
      t.integer :parentcard_id
      t.string :cardtype
      t.string :tasktype
      t.integer :cardsize
      t.datetime :plannedstartdate
      t.datetime :planneddate
      t.datetime :actualstartdate
      t.datetime :actualenddate

      t.timestamps
    end
  end
end
