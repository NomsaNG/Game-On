class Game < ApplicationRecord
  VALID_VISIBILITIES = ["Public", "Community", "Private"]
  VALID_SPORTS = ["Tennis", "Squash", "Padel"]

  validates :description, :capacity, :start_time, :end_time, presence: true
  validates :visibility, inclusion: { in: VALID_VISIBILITIES }
  validates :sport, inclusion: { in: VALID_SPORTS }

  validates :community_id, presence: true, if: -> { visibility == 'Community' }

  belongs_to :venue
  belongs_to :community, optional: true

  has_many :participants
  has_many :users, through: :participants

  has_many :chatrooms
end
