require 'rails_helper'


RSpec.describe Lane, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  context 'validation tests' do
    it 'ensures laneId and boardID presence' do
      lane = Lane.new(leankit_board_id:'1').save
      expect(lane).to eq(false)
    end
    it 'ensures laneId and boardID not presence' do
      lane = Lane.new(leankit_lane_id:'1').save
      expect(lane).to eq(false)
    end
    # it 'ensures laneId and boardID presence' do
    #   lane = Lane.new(id: 2, leankit_lane_id: '1',leankit_board_id: '1').save
    #   expect(lane).to eq(true)
    # end

    # it 'should save successfully' do
    #   lane = Lane.new(leankit_lane_id: '1',leankit_board_id: '1').save
    #   #lane = Lane.new(lane_name: 'development').save
    #   expect(lane).to eq(true)
    # end

  end

  describe Lane do
    it "should have many cards" do
      t = Lane.reflect_on_association(:cards)
      expect(t.macro).to eq(:has_many)
    end
  end

  describe Lane do
    it "should belongs_to board" do
      t = Lane.reflect_on_association(:board)
      expect(t.macro).to eq(:belongs_to)
    end
  end

end
