class AddFKtoInvoiceTable < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :invoices, :currencies
  end
end
