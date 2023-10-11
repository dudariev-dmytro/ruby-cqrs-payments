class CreateTransactionProjections < ActiveRecord::Migration[7.1]
  def change
    create_table :transaction_projections, id: false do |t|
      t.uuid :transaction_id
      t.string :action
      t.string :status
      t.decimal :amount
      t.uuid :customer_id
      t.string :customer_external_id
      t.uuid :merchant_id
      t.string :merchant_external_id
      t.string :provider
      t.uuid :client_payment_method
      t.uuid :provider_setting
      t.uuid :client_id
      t.string :event_type
      t.json :event_data

      t.timestamps
    end
  end
end
