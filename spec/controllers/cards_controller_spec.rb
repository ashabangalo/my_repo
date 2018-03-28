require 'rails_helper'


RSpec.describe CardsController, type: :controller do


  context 'Get #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_success # response.success?
    end
  end

it 'can get one card by card ID' do
    @cardsResponse,@cardsStatus = GetLeankitCards.get("445082433")
    expect(@cardsStatus).to eq(200)

end
  # context 'Get #show' do
  #   it 'should redirect to the card show page'do
  #
  #   end
  #
  # end

end
