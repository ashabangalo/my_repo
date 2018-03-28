FactoryBot.define do
  factory :card do
    leankit_card_id '1'
    leankit_lane_id '1'
    
  end

factory :post do
  association :lane, factory: :card
end
  # factory :random_lane, class: Card do
  #   leankit_lane_id {Faker::Name.leankit_lane_id}
  #   leankit_card_id {Faker::Name.leankit_card_id}
  # end
end
