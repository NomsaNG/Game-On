class Chatroom < ApplicationRecord
  belongs_to :game, optional: true
  belongs_to :community, optional: true
  has_many :messages, dependent: :destroy
end
