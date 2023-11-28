class CreateCommunities < ActiveRecord::Migration[7.1]
  def change
    create_table :communities do |t|
      t.string :name
      t.string :visibility
      t.text :description

      t.timestamps
    end
  end
end
