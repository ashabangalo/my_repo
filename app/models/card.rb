class Card < ApplicationRecord
  belongs_to :lanes
  validates :leankit_card_id, presence: true
  validates :leankit_lane_id, presence: true
end
