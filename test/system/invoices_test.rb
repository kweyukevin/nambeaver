require "application_system_test_case"

class InvoicesTest < ApplicationSystemTestCase
  setup do
    @invoice = invoices(:one)
  end

  test "visiting the index" do
    visit invoices_url
    assert_selector "h1", text: "Invoices"
  end

  test "creating a Invoice" do
    visit invoices_url
    click_on "New Invoice"

    fill_in "Currency", with: @invoice.currency_id
    fill_in "Customer", with: @invoice.customer_id
    fill_in "Due date", with: @invoice.due_date
    fill_in "Invoice comment", with: @invoice.invoice_comment
    fill_in "Invoice description", with: @invoice.invoice_description
    fill_in "Invoice quantity", with: @invoice.invoice_quantity
    fill_in "Invoice total price", with: @invoice.invoice_total_price
    fill_in "Invoice unit price", with: @invoice.invoice_unit_price
    fill_in "Status", with: @invoice.status
    fill_in "User", with: @invoice.user_id
    click_on "Create Invoice"

    assert_text "Invoice was successfully created"
    click_on "Back"
  end

  test "updating a Invoice" do
    visit invoices_url
    click_on "Edit", match: :first

    fill_in "Currency", with: @invoice.currency_id
    fill_in "Customer", with: @invoice.customer_id
    fill_in "Due date", with: @invoice.due_date
    fill_in "Invoice comment", with: @invoice.invoice_comment
    fill_in "Invoice description", with: @invoice.invoice_description
    fill_in "Invoice quantity", with: @invoice.invoice_quantity
    fill_in "Invoice total price", with: @invoice.invoice_total_price
    fill_in "Invoice unit price", with: @invoice.invoice_unit_price
    fill_in "Status", with: @invoice.status
    fill_in "User", with: @invoice.user_id
    click_on "Update Invoice"

    assert_text "Invoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoice" do
    visit invoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoice was successfully destroyed"
  end
end
