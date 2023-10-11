require "application_system_test_case"

class TransactionAggregatesTest < ApplicationSystemTestCase
  setup do
    @transaction_aggregate = transaction_aggregates(:one)
  end

  test "visiting the index" do
    visit transaction_aggregates_url
    assert_selector "h1", text: "Transaction aggregates"
  end

  test "should create transaction aggregate" do
    visit transaction_aggregates_url
    click_on "New transaction aggregate"

    fill_in "Action", with: @transaction_aggregate.action
    fill_in "Aggregate", with: @transaction_aggregate.aggregate_id
    fill_in "Amount", with: @transaction_aggregate.amount
    fill_in "Client", with: @transaction_aggregate.client_id
    fill_in "Client payment method", with: @transaction_aggregate.client_payment_method
    fill_in "Customer external", with: @transaction_aggregate.customer_external_id
    fill_in "Customer", with: @transaction_aggregate.customer_id
    fill_in "Event data", with: @transaction_aggregate.event_data
    fill_in "Event type", with: @transaction_aggregate.event_type
    fill_in "Merchant external", with: @transaction_aggregate.merchant_external_id
    fill_in "Merchant", with: @transaction_aggregate.merchant_id
    fill_in "Provider", with: @transaction_aggregate.provider
    fill_in "Provider setting", with: @transaction_aggregate.provider_setting
    fill_in "Status", with: @transaction_aggregate.status
    click_on "Create Transaction aggregate"

    assert_text "Transaction aggregate was successfully created"
    click_on "Back"
  end

  test "should update Transaction aggregate" do
    visit transaction_aggregate_url(@transaction_aggregate)
    click_on "Edit this transaction aggregate", match: :first

    fill_in "Action", with: @transaction_aggregate.action
    fill_in "Aggregate", with: @transaction_aggregate.aggregate_id
    fill_in "Amount", with: @transaction_aggregate.amount
    fill_in "Client", with: @transaction_aggregate.client_id
    fill_in "Client payment method", with: @transaction_aggregate.client_payment_method
    fill_in "Customer external", with: @transaction_aggregate.customer_external_id
    fill_in "Customer", with: @transaction_aggregate.customer_id
    fill_in "Event data", with: @transaction_aggregate.event_data
    fill_in "Event type", with: @transaction_aggregate.event_type
    fill_in "Merchant external", with: @transaction_aggregate.merchant_external_id
    fill_in "Merchant", with: @transaction_aggregate.merchant_id
    fill_in "Provider", with: @transaction_aggregate.provider
    fill_in "Provider setting", with: @transaction_aggregate.provider_setting
    fill_in "Status", with: @transaction_aggregate.status
    click_on "Update Transaction aggregate"

    assert_text "Transaction aggregate was successfully updated"
    click_on "Back"
  end

  test "should destroy Transaction aggregate" do
    visit transaction_aggregate_url(@transaction_aggregate)
    click_on "Destroy this transaction aggregate", match: :first

    assert_text "Transaction aggregate was successfully destroyed"
  end
end
