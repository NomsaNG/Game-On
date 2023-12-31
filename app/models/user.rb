class User < ApplicationRecord
  has_one_attached :photo

  VALID_GENDERS = ["Male", "Female", "Other"]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :username, presence: true
  validates :first_name, :last_name, presence: true
  validates :gender, inclusion: { in: VALID_GENDERS }

  has_many :memberships, dependent: :destroy
  has_many :communities, through: :memberships
  has_many :participations, dependent: :destroy
  has_many :games, through: :participations
  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
  has_many :received_messages, class_name: 'Message', foreign_key: 'receiver_id'
  # edits
  has_many :participated_games, through: :participations, source: :game
end
