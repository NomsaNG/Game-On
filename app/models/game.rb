class Game < ApplicationRecord
  enum visibility: { public: 0, community: 1, private: 2 }
  enum sport: { tennis: 'Tennis', squash: 'Squash', padel: 'Padel' }

  validates :description, :visibility, :capacity, :sport, :start_time, :end_time, presence: true
  validates :community_id, presence: true, if: -> { visibility == 'community' }

  belongs_to :venue
  belongs_to :community, optional: true

  has_many :participants
  has_many :users, through: :participations

  has_many :chatrooms
end
