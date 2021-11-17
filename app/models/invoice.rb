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

  def self.payment_band(from, to)
    where("due_date <= '#{from}' and due_date >='#{to}'")
  end
end
