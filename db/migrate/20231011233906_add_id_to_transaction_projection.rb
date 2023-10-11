class AddIdToTransactionProjection < ActiveRecord::Migration[7.1]
  def change
    add_column :transaction_projections, :id, :uuid, primary_key: true, default: -> { 'gen_random_uuid()' }
  end
end
