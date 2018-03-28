require 'rails_helper'

RSpec.describe Card, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  context 'validation tests' do
    it 'ensures cardId presence' do
      card = Card.new(card_title:'retrolysis card').save
      expect(card).to eq(false)
    end
    it 'ensures LaneId presence' do
      card = Card.new(card_size:'2').save
      expect(card).to eq(false)
    end
  end

  describe Card do
    it "should belongs_to Lane" do
      t = Card.reflect_on_association(:lanes)
      expect(t.macro).to eq(:belongs_to)
    end
  end

end
