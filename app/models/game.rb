class Game < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_keyword, against: [:name, :description, :sport],
                  associated_against: { venue: [:name, :address] },
                  using: { tsearch: { prefix: true } }

  VALID_VISIBILITIES = ["Public", "Community", "Private"]
  VALID_SPORTS = ["Tennis", "Squash", "Padel"]

  validates :capacity, :name, presence: true
  validates :visibility, inclusion: { in: VALID_VISIBILITIES }
  validates :sport, inclusion: { in: VALID_SPORTS }

  validates :community_id, presence: true, if: -> { visibility == 'Community' }

  belongs_to :venue
  belongs_to :community, optional: true

  has_many :participations, dependent: :destroy
  has_many :users, through: :participations

  has_many :chatrooms, dependent: :destroy
end
