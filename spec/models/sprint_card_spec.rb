require 'rails_helper'

RSpec.describe SprintCard, type: :model do

  context 'validation tests' do
    it 'ensures sprint card ID presence' do
      lane = SprintCard.new(leankit_board_id:'1').save
      expect(lane).to eq(false)
    end
    it 'ensures sprint ID presence' do
      lane = SprintCard.new(leankit_sprint_id:'1').save
      expect(lane).to eq(false)
    end

    it "Check for created_at attribute" do
       @time_now = Time.now
       sprint = SprintCard.new(created_at: '2017-01-02')
       expect(sprint.created_at).to eq('2017-01-02')
    end
   it "updates updated_at attribute" do
      @time_now = Time.now
      sprint = SprintCard.new(updated_at: '2018-01-02')
      expect(sprint.updated_at).to eq('2018-01-02')
   end

  end
end
