# LeankitConnect.api

require 'rails_helper'

RSpec.describe 'Status requests' do
  describe 'GET /board' do
    it 'returns a status message' do
      get('/board')
      json = JSON.parse(response.body)
      expect(json['board']).to eql('ok')
      expect(response.status).to eql(200)
    end
  end
end
