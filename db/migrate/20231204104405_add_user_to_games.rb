class AddUserToGames < ActiveRecord::Migration[7.1]
  def change
    add_reference :games, :user
  end
end
