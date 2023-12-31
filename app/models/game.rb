class Game < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_keyword, against: [:name, :description, :sport],
                  associated_against: { venue: [:name, :address] },
                  using: { tsearch: { prefix: true } }

  VALID_VISIBILITIES = ["Public", "Team", "Private"]
  VALID_SPORTS = ["Tennis", "Squash", "Padel"]

  validates :capacity, :name, presence: true
  validates :visibility, inclusion: { in: VALID_VISIBILITIES }
  validates :sport, inclusion: { in: VALID_SPORTS }

  belongs_to :venue
  belongs_to :community, optional: true

  has_many :participations, dependent: :destroy
  has_many :users, through: :participations


  has_one :chatroom, dependent: :destroy


  scope :past, -> { where('game_date < ?', Date.today) }
  scope :upcoming, -> { where('game_date >= ?', Date.today) }

end
