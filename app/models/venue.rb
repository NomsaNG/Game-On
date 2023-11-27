class Venue < ApplicationRecord
  validates :address, :description, presence: true

  has_many :games
end
