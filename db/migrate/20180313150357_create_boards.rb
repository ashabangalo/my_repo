class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.integer "leankit_board_id", null: false
      t.string "board_title"
      t.string "board_desc"
      t.timestamps
    end
  end
end
