class AddShoppingcartToUsers < ActiveRecord::Migration
  def change
    add_column :users, :shoppingcart, :text, array: true, default: []
  end
end
