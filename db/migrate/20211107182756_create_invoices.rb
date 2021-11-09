class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.integer :user_id
      t.integer :customer_id
      t.integer :currency_id
      t.datetime :due_date
      t.string :status
      t.string :invoice_description
      t.decimal :invoice_quantity
      t.decimal :invoice_unit_price
      t.decimal :invoice_total_price
      t.string :invoice_comment

      t.timestamps
    end
  end
end
