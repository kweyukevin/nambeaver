class AddCurrencyTable < ActiveRecord::Migration[6.1]
  def change
    create_table :currency do |t|
      t.string :name
      t.string :code
      t.string :symbol
    end

    # add a CHECK constraint
    execute <<-SQL
    INSERT INTO currency (name, code, symbol) VALUES ('Dollars', 'USD', '$');
    INSERT INTO currency (name, code, symbol) VALUES ('Euro', 'EUR', '€');
    INSERT INTO currency (name, code, symbol) VALUES ('Pounds', 'GBP', '£');
    INSERT INTO currency (name, code, symbol) VALUES ('Dollars', 'CAD', '$');
    INSERT INTO currency (name, code, symbol) VALUES ('Kenyan shilling', 'KES', 'Ksh');

    SQL
  end
end
