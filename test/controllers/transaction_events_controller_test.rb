require "test_helper"

class TransactionEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction_event = transaction_events(:one)
  end

  test "should get index" do
    get transaction_events_url
    assert_response :success
  end

  test "should get new" do
    get new_transaction_event_url
    assert_response :success
  end

  test "should create transaction_event" do
    assert_difference("TransactionEvent.count") do
      post transaction_events_url, params: { transaction_event: { action: @transaction_event.action, aggregate_id: @transaction_event.aggregate_id, amount: @transaction_event.amount, client_id: @transaction_event.client_id, client_payment_method: @transaction_event.client_payment_method, customer_external_id: @transaction_event.customer_external_id, customer_id: @transaction_event.customer_id, event_data: @transaction_event.event_data, event_id: @transaction_event.event_id, event_timestamp: @transaction_event.event_timestamp, event_type: @transaction_event.event_type, merchant_external_id: @transaction_event.merchant_external_id, merchant_id: @transaction_event.merchant_id, provider: @transaction_event.provider, provider_setting: @transaction_event.provider_setting, status: @transaction_event.status } }
    end

    assert_redirected_to transaction_event_url(TransactionEvent.last)
  end

  test "should show transaction_event" do
    get transaction_event_url(@transaction_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_transaction_event_url(@transaction_event)
    assert_response :success
  end

  test "should update transaction_event" do
    patch transaction_event_url(@transaction_event), params: { transaction_event: { action: @transaction_event.action, aggregate_id: @transaction_event.aggregate_id, amount: @transaction_event.amount, client_id: @transaction_event.client_id, client_payment_method: @transaction_event.client_payment_method, customer_external_id: @transaction_event.customer_external_id, customer_id: @transaction_event.customer_id, event_data: @transaction_event.event_data, event_id: @transaction_event.event_id, event_timestamp: @transaction_event.event_timestamp, event_type: @transaction_event.event_type, merchant_external_id: @transaction_event.merchant_external_id, merchant_id: @transaction_event.merchant_id, provider: @transaction_event.provider, provider_setting: @transaction_event.provider_setting, status: @transaction_event.status } }
    assert_redirected_to transaction_event_url(@transaction_event)
  end

  test "should destroy transaction_event" do
    assert_difference("TransactionEvent.count", -1) do
      delete transaction_event_url(@transaction_event)
    end

    assert_redirected_to transaction_events_url
  end
end
