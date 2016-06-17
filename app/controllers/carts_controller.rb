class CartsController < ApplicationController

  def index
    @user = current_user
    @product = Product.find(params[:product])
    cart = @user.shoppingcart
    cart << @product.id
    @user.update_columns(shoppingcart: cart)


  end
end
