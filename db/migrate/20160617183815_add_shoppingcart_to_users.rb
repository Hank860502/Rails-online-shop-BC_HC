class AddShoppingcartToUsers < ActiveRecord::Migration
  def change
    add_column :users, :shoppingcart, :string
  end
end
