require 'rails_helper'

RSpec.describe 'Status requests' do
  describe 'GET /cards' do
    it 'returns a status message' do
      get('/cards')
      json = JSON.parse(response.body)
      expect(json['cards']).to eql('ok')
      expect(response.status).to eql(200)
    end
  end
end
