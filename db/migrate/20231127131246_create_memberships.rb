class CreateMemberships < ActiveRecord::Migration[7.1]
  def change
    create_table :membership do |t|
      t.references :user, null: false, foreign_key: true
      t.references :community, null: false, foreign_key: true
      t.boolean :is_admin

      t.timestamps
    end
  end
end
