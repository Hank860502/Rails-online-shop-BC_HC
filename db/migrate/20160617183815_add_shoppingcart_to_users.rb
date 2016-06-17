class AddShoppingcartToUsers < ActiveRecord::Migration
  def change
    add_column :users, :shoppingcart, :integer
  end
end
