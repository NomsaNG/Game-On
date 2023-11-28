class User < ApplicationRecord
  has_one_attached :photo

  VALID_GENDERS = ["Male", "Female", "Other"]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :username, presence: true
  validates :first_name, :last_name, presence: true
  validates :gender, inclusion: { in: VALID_GENDERS }

  has_many :affiliations
  has_many :communities, through: :affiliations
  has_many :participants
  has_many :games, through: :participations
  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
  has_many :received_messages, class_name: 'Message', foreign_key: 'receiver_id'
end
