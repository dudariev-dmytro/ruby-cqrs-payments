require "test_helper"

class TransactionProjectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction_projection = transaction_projections(:one)
  end

  test "should get index" do
    get transaction_projections_url
    assert_response :success
  end

  test "should get new" do
    get new_transaction_projection_url
    assert_response :success
  end

  test "should create transaction_projection" do
    assert_difference("TransactionProjection.count") do
      post transaction_projections_url, params: { transaction_projection: { action: @transaction_projection.action, amount: @transaction_projection.amount, client_id: @transaction_projection.client_id, client_payment_method: @transaction_projection.client_payment_method, customer_external_id: @transaction_projection.customer_external_id, customer_id: @transaction_projection.customer_id, event_data: @transaction_projection.event_data, event_type: @transaction_projection.event_type, merchant_external_id: @transaction_projection.merchant_external_id, merchant_id: @transaction_projection.merchant_id, provider: @transaction_projection.provider, provider_setting: @transaction_projection.provider_setting, status: @transaction_projection.status, transaction_id: @transaction_projection.transaction_id } }
    end

    assert_redirected_to transaction_projection_url(TransactionProjection.last)
  end

  test "should show transaction_projection" do
    get transaction_projection_url(@transaction_projection)
    assert_response :success
  end

  test "should get edit" do
    get edit_transaction_projection_url(@transaction_projection)
    assert_response :success
  end

  test "should update transaction_projection" do
    patch transaction_projection_url(@transaction_projection), params: { transaction_projection: { action: @transaction_projection.action, amount: @transaction_projection.amount, client_id: @transaction_projection.client_id, client_payment_method: @transaction_projection.client_payment_method, customer_external_id: @transaction_projection.customer_external_id, customer_id: @transaction_projection.customer_id, event_data: @transaction_projection.event_data, event_type: @transaction_projection.event_type, merchant_external_id: @transaction_projection.merchant_external_id, merchant_id: @transaction_projection.merchant_id, provider: @transaction_projection.provider, provider_setting: @transaction_projection.provider_setting, status: @transaction_projection.status, transaction_id: @transaction_projection.transaction_id } }
    assert_redirected_to transaction_projection_url(@transaction_projection)
  end

  test "should destroy transaction_projection" do
    assert_difference("TransactionProjection.count", -1) do
      delete transaction_projection_url(@transaction_projection)
    end

    assert_redirected_to transaction_projections_url
  end
end
