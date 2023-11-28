class CreateVenues < ActiveRecord::Migration[7.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
