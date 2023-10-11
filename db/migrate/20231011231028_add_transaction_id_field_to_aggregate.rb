class AddTransactionIdFieldToAggregate < ActiveRecord::Migration[7.1]
  def change
    add_column :transaction_aggregates, :transaction_id, :uuid
  end
end
