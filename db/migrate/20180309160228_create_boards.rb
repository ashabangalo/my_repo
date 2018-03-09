class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.integer :board_id, null: false
      t.string :boardtitle
      t.string :boarddesc

      t.timestamps
    end

    add_index :boards, :board_id, unique: true
  end
end
