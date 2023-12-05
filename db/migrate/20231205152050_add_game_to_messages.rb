class AddGameToMessages < ActiveRecord::Migration[7.1]
  def change
    add_reference :messages, :game, foreign_key: true, null: true
  end
end
