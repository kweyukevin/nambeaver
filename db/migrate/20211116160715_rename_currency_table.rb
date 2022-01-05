class RenameCurrencyTable < ActiveRecord::Migration[6.1]
  def change
    rename_table('currency', 'currencies')
  end
end
