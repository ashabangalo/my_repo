class Lane < ApplicationRecord
  belongs_to :boards
  has_many :cards
  validates :lane_id, uniqueness: true
end
