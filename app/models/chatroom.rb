class Chatroom < ApplicationRecord
  belongs_to :game, optional: true
  belongs_to :community, optional: true
  has_many :messages, dependent: :destroy

  def last_message_timestamp
    last_message&.created_at
  end

  private

  def last_message
    messages.order(created_at: :desc).first
  end
end
