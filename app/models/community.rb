class Community < ApplicationRecord
  VALID_VISIBILITIES = ["Public", "Private"]

  validates :name, :description, :visibility, presence: true
  validates :visibility, inclusion: { in: VALID_VISIBILITIES }

  has_many :memberships
  has_many :users, through: :memberships

  has_many :games
  has_many :chatrooms
  has_many :leaderboards
end
