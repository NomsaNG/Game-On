class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :community

  def random_games_won
    rand(1..50)
  end
end
