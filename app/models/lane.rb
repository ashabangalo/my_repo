class Lane < ApplicationRecord
  has_many :cards
  belongs_to :board
  validates :leankit_board_id, presence: true
  validates :leankit_lane_id, presence: true
end
