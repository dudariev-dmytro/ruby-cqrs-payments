json.extract! transaction_projection, :id, :transaction_id, :action, :status, :amount, :customer_id, :customer_external_id, :merchant_id, :merchant_external_id, :provider, :client_payment_method, :provider_setting, :client_id, :event_type, :event_data, :created_at, :updated_at
json.url transaction_projection_url(transaction_projection, format: :json)
