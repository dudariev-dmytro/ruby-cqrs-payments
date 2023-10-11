require "test_helper"

class TransactionAggregatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction_aggregate = transaction_aggregates(:one)
  end

  test "should get index" do
    get transaction_aggregates_url
    assert_response :success
  end

  test "should get new" do
    get new_transaction_aggregate_url
    assert_response :success
  end

  test "should create transaction_aggregate" do
    assert_difference("TransactionAggregate.count") do
      post transaction_aggregates_url, params: { transaction_aggregate: { action: @transaction_aggregate.action, aggregate_id: @transaction_aggregate.aggregate_id, amount: @transaction_aggregate.amount, client_id: @transaction_aggregate.client_id, client_payment_method: @transaction_aggregate.client_payment_method, customer_external_id: @transaction_aggregate.customer_external_id, customer_id: @transaction_aggregate.customer_id, event_data: @transaction_aggregate.event_data, event_type: @transaction_aggregate.event_type, merchant_external_id: @transaction_aggregate.merchant_external_id, merchant_id: @transaction_aggregate.merchant_id, provider: @transaction_aggregate.provider, provider_setting: @transaction_aggregate.provider_setting, status: @transaction_aggregate.status } }
    end

    assert_redirected_to transaction_aggregate_url(TransactionAggregate.last)
  end

  test "should show transaction_aggregate" do
    get transaction_aggregate_url(@transaction_aggregate)
    assert_response :success
  end

  test "should get edit" do
    get edit_transaction_aggregate_url(@transaction_aggregate)
    assert_response :success
  end

  test "should update transaction_aggregate" do
    patch transaction_aggregate_url(@transaction_aggregate), params: { transaction_aggregate: { action: @transaction_aggregate.action, aggregate_id: @transaction_aggregate.aggregate_id, amount: @transaction_aggregate.amount, client_id: @transaction_aggregate.client_id, client_payment_method: @transaction_aggregate.client_payment_method, customer_external_id: @transaction_aggregate.customer_external_id, customer_id: @transaction_aggregate.customer_id, event_data: @transaction_aggregate.event_data, event_type: @transaction_aggregate.event_type, merchant_external_id: @transaction_aggregate.merchant_external_id, merchant_id: @transaction_aggregate.merchant_id, provider: @transaction_aggregate.provider, provider_setting: @transaction_aggregate.provider_setting, status: @transaction_aggregate.status } }
    assert_redirected_to transaction_aggregate_url(@transaction_aggregate)
  end

  test "should destroy transaction_aggregate" do
    assert_difference("TransactionAggregate.count", -1) do
      delete transaction_aggregate_url(@transaction_aggregate)
    end

    assert_redirected_to transaction_aggregates_url
  end
end
