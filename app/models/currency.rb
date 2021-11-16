class Currency < ApplicationRecord
    has_many :Invoices
end
