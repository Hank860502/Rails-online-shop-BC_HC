class AddStockAndCurrencyToProducts < ActiveRecord::Migration
  def change
    add_column :products, :stock, :integer
    add_column :products, :currency, :string
  end
end
