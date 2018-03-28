FactoryBot.define do
  factory :lane do
    leankit_lane_id '1'
    leankit_board_id '1'
  end
  # factory :random_lane, class: Lane do
  #   leankit_lane_id {Faker::Name.leankit_lane_id}
  #   leankit_board_id {Faker::Name.leankit_board_id}
  # end

end
