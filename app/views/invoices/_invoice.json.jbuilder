json.extract! invoice, :id, :user_id, :customer_id, :currency_id, :due_date, :status, :invoice_description, :invoice_quantity, :invoice_unit_price, :invoice_total_price, :invoice_comment, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
