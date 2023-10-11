require "application_system_test_case"

class TransactionEventsTest < ApplicationSystemTestCase
  setup do
    @transaction_event = transaction_events(:one)
  end

  test "visiting the index" do
    visit transaction_events_url
    assert_selector "h1", text: "Transaction events"
  end

  test "should create transaction event" do
    visit transaction_events_url
    click_on "New transaction event"

    fill_in "Action", with: @transaction_event.action
    fill_in "Aggregate", with: @transaction_event.aggregate_id
    fill_in "Amount", with: @transaction_event.amount
    fill_in "Client", with: @transaction_event.client_id
    fill_in "Client payment method", with: @transaction_event.client_payment_method
    fill_in "Customer external", with: @transaction_event.customer_external_id
    fill_in "Customer", with: @transaction_event.customer_id
    fill_in "Event data", with: @transaction_event.event_data
    fill_in "Event", with: @transaction_event.event_id
    fill_in "Event timestamp", with: @transaction_event.event_timestamp
    fill_in "Event type", with: @transaction_event.event_type
    fill_in "Merchant external", with: @transaction_event.merchant_external_id
    fill_in "Merchant", with: @transaction_event.merchant_id
    fill_in "Provider", with: @transaction_event.provider
    fill_in "Provider setting", with: @transaction_event.provider_setting
    fill_in "Status", with: @transaction_event.status
    click_on "Create Transaction event"

    assert_text "Transaction event was successfully created"
    click_on "Back"
  end

  test "should update Transaction event" do
    visit transaction_event_url(@transaction_event)
    click_on "Edit this transaction event", match: :first

    fill_in "Action", with: @transaction_event.action
    fill_in "Aggregate", with: @transaction_event.aggregate_id
    fill_in "Amount", with: @transaction_event.amount
    fill_in "Client", with: @transaction_event.client_id
    fill_in "Client payment method", with: @transaction_event.client_payment_method
    fill_in "Customer external", with: @transaction_event.customer_external_id
    fill_in "Customer", with: @transaction_event.customer_id
    fill_in "Event data", with: @transaction_event.event_data
    fill_in "Event", with: @transaction_event.event_id
    fill_in "Event timestamp", with: @transaction_event.event_timestamp
    fill_in "Event type", with: @transaction_event.event_type
    fill_in "Merchant external", with: @transaction_event.merchant_external_id
    fill_in "Merchant", with: @transaction_event.merchant_id
    fill_in "Provider", with: @transaction_event.provider
    fill_in "Provider setting", with: @transaction_event.provider_setting
    fill_in "Status", with: @transaction_event.status
    click_on "Update Transaction event"

    assert_text "Transaction event was successfully updated"
    click_on "Back"
  end

  test "should destroy Transaction event" do
    visit transaction_event_url(@transaction_event)
    click_on "Destroy this transaction event", match: :first

    assert_text "Transaction event was successfully destroyed"
  end
end
