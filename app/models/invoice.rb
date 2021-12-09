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

# def invoice_total_price
#   self.invoice_quantity * self.invoice_unit_price
#
# end
end
