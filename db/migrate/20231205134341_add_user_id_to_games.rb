class AddUserIdToGames < ActiveRecord::Migration[7.1]
  def change
    add_reference :games, :user, null: false, foreign_key: true unless column_exists? :games, :user_id
  end
end
