class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.integer :leankit_board_id, null: false
      t.string :boardtitle
      t.string :boarddesc

      t.timestamps
    end
  end
end
