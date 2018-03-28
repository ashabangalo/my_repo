class SprintCard < ApplicationRecord
  validates :leankit_board_id, presence: true
  validates :leankit_sprint_id, presence: true
end
