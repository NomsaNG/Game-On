class CreateVenues < ActiveRecord::Migration[7.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.text :description
      t.boolean :has_tennis
      t.boolean :has_squash
      t.boolean :has_padel
      t.timestamps
    end
  end
end
