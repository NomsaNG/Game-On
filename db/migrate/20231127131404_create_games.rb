class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.text :description
      t.integer :visibility
      t.references :community, null: false, foreign_key: true
      t.integer :capacity
      t.references :venue, null: false, foreign_key: true
      t.integer :sport
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
