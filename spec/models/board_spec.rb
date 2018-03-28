require 'rails_helper'

RSpec.describe Board, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  context 'validation tests' do
    it 'ensures boardId presence' do
      board = Board.new(board_title:'retrolysis board').save
      expect(board).to eq(false)
    end

    it 'should save sucessfully' do
      board = Board.new(leankit_board_id:'1').save
      expect(board).to eq(true)
    end
  end

  context 'scope tests' do
  end
end
