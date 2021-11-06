require "test_helper"

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  test "should get invoice" do
    get invoices_invoice_url
    assert_response :success
  end
end
