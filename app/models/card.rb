class Card < ApplicationRecord
  belongs_to :lanes

  validates :card_id, uniqueness: true
end
