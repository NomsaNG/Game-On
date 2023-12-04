class Community < ApplicationRecord
  has_one_attached :photo

  VALID_VISIBILITIES = ["Public", "Private"]

  validates :name, :description, :visibility, presence: true
  validates :visibility, inclusion: { in: VALID_VISIBILITIES }

  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships

  has_many :games
  belongs_to :chatroom, optional: true, dependent: :destroy
end
