class ChangeReceiverReferenceInMessages < ActiveRecord::Migration[7.1]
  def change
    change_column :messages, :receiver_id, :bigint, null: true
  end
end
