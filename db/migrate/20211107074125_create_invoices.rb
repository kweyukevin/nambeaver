class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.integer :user_id
      t.integer :customer_id
      t.integer :currency_id
      t.datetime :due_date
      t.string :status

      t.timestamps
    end
  end
end
