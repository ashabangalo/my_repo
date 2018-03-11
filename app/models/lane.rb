class Lane < ApplicationRecord
  belongs_to :boards
  has_many :cards
end
