require 'rails_helper'
#require 'get_leankit_board.rb'
RSpec.describe BoardController, type: :controller do
  context 'Get #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_success # response.success?
    end
  end
  context 'Get #show' do
    it 'returns a success Response' do
      board = Board.create!(leankit_board_id: '1')
      get :show, params: {id: board.to_param}
      expect(response).to be_success
    end

  it 'Get board details by bord ID' do
      @cardsResponse,@cardsStatus = GetLeankitBoard.get("627392013")
      expect(@cardsStatus).to eq(200)
    end
  end
end
