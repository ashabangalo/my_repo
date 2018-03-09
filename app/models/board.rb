class Board < ApplicationRecord
  has_many :lanes
  validates :board_id, uniqueness: true
end
