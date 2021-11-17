class DashboardController < ApplicationController
  helper_method :arrears_amount_sum, :invoice_payment_band

  def index
    @invoices = Invoice.all
  end

  #Gets invoices whose due dates fall between the given to and from ranges. The range is converted first to actual times from the current date time
  def invoice_payment_band(from, to)
    from = Time.now.prev_day(from).strftime("%Y-%m-%d")
    to = Time.now.prev_day(to).strftime("%Y-%m-%d")
    records = Invoice.payment_band(from, to)
  end

  #Calculates the total amount for invoice records using field 'invoice_total_price'
  def arrears_amount_sum(records)
    total = 0
    records.each do |record|
      total = total + record.invoice_total_price
    end
    return total
  end
end
