class AddCoordinatesToVenues < ActiveRecord::Migration[7.1]
  def change
    add_column :venues, :latitude, :float
    add_column :venues, :longitude, :float
  end
end
