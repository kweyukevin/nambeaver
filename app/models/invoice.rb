class Invoice < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  belongs_to :currency

  def invoice_status
    if status == 1
      return "Pending"
    elsif status == 2
      return "Overdue"
    elsif status == 3
      return "Paid"
    end
  end


end
# invoice_quantity =
# invoice_unit_price
def invoive_total_price(invoice_quantity,invoice_unit_price)
@invoice = invoice_quantity
@invoice = invoice_unit_price

sum_value = invoice_quantity * invoice_unit_price
return sum_value
end
