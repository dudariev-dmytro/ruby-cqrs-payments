class AddTransactionIdFieldToEvent < ActiveRecord::Migration[7.1]
  def change
    add_column :transaction_events, :transaction_id, :uuid
  end
end
