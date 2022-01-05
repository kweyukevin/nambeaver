class AddCustomerInvoiceFkAssociation < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :invoices, :customers
  end
end
