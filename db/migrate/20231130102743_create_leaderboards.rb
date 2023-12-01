class CreateLeaderboards < ActiveRecord::Migration[7.1]
  def change
    create_table :leaderboards do |t|
      t.references :community, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
