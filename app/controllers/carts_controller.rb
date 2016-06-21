class CartsController < ApplicationController

  def index
    @user = current_user
    @product = Product.find(params[:product])
    cart = @user.shoppingcart
    cart << @product.id.to_s
    @user.update_columns(shoppingcart: cart)
    p "*"*50
    p @user
    p "*"*50
  end

  def show
    @user = current_user
  end



end
