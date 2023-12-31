class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.text :name
      t.text :description
      t.string :visibility
      t.references :community, foreign_key: true
      t.integer :capacity
      t.references :venue, null: false, foreign_key: true
      t.string :sport
      t.date :game_date
      t.integer :start_time
      t.timestamps
    end
  end
end
