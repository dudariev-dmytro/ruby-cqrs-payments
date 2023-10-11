json.extract! transaction_aggregate, :id, :aggregate_id, :action, :status, :amount, :customer_id, :customer_external_id, :merchant_id, :merchant_external_id, :provider, :client_payment_method, :provider_setting, :client_id, :event_type, :event_data, :created_at, :updated_at, :transaction_id
json.url transaction_aggregate_url(transaction_aggregate, format: :json)
