class Board < ApplicationRecord
  has_many :lanes
  validates :leankit_board_id, presence: true
end
