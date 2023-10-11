require "application_system_test_case"

class TransactionProjectionsTest < ApplicationSystemTestCase
  setup do
    @transaction_projection = transaction_projections(:one)
  end

  test "visiting the index" do
    visit transaction_projections_url
    assert_selector "h1", text: "Transaction projections"
  end

  test "should create transaction projection" do
    visit transaction_projections_url
    click_on "New transaction projection"

    fill_in "Action", with: @transaction_projection.action
    fill_in "Amount", with: @transaction_projection.amount
    fill_in "Client", with: @transaction_projection.client_id
    fill_in "Client payment method", with: @transaction_projection.client_payment_method
    fill_in "Customer external", with: @transaction_projection.customer_external_id
    fill_in "Customer", with: @transaction_projection.customer_id
    fill_in "Event data", with: @transaction_projection.event_data
    fill_in "Event type", with: @transaction_projection.event_type
    fill_in "Merchant external", with: @transaction_projection.merchant_external_id
    fill_in "Merchant", with: @transaction_projection.merchant_id
    fill_in "Provider", with: @transaction_projection.provider
    fill_in "Provider setting", with: @transaction_projection.provider_setting
    fill_in "Status", with: @transaction_projection.status
    fill_in "Transaction", with: @transaction_projection.transaction_id
    click_on "Create Transaction projection"

    assert_text "Transaction projection was successfully created"
    click_on "Back"
  end

  test "should update Transaction projection" do
    visit transaction_projection_url(@transaction_projection)
    click_on "Edit this transaction projection", match: :first

    fill_in "Action", with: @transaction_projection.action
    fill_in "Amount", with: @transaction_projection.amount
    fill_in "Client", with: @transaction_projection.client_id
    fill_in "Client payment method", with: @transaction_projection.client_payment_method
    fill_in "Customer external", with: @transaction_projection.customer_external_id
    fill_in "Customer", with: @transaction_projection.customer_id
    fill_in "Event data", with: @transaction_projection.event_data
    fill_in "Event type", with: @transaction_projection.event_type
    fill_in "Merchant external", with: @transaction_projection.merchant_external_id
    fill_in "Merchant", with: @transaction_projection.merchant_id
    fill_in "Provider", with: @transaction_projection.provider
    fill_in "Provider setting", with: @transaction_projection.provider_setting
    fill_in "Status", with: @transaction_projection.status
    fill_in "Transaction", with: @transaction_projection.transaction_id
    click_on "Update Transaction projection"

    assert_text "Transaction projection was successfully updated"
    click_on "Back"
  end

  test "should destroy Transaction projection" do
    visit transaction_projection_url(@transaction_projection)
    click_on "Destroy this transaction projection", match: :first

    assert_text "Transaction projection was successfully destroyed"
  end
end
