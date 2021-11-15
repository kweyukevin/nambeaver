class UpdateInvoiceTable < ActiveRecord::Migration[6.1]
  def change
    # change_column_default :invoices, :status, '0'
    change_column :invoices, :status, :integer, using: 'status::integer'
  end
end
