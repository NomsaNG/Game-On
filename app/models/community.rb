class Community < ApplicationRecord
  enum visibility: { public: 0, private: 1 }

  validates :name, :visibility, :description, presence: true

  has_many :memberships
  has_many :users, through: :memberships

  has_many :games
  has_many :chatrooms
end
