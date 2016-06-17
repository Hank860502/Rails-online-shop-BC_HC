class CartsController < ApplicationController

  def index
    @user = current_user
    @product = Product.find(params[:product])
    @user.shoppingcart.push(@product)
    @user.save
    ## will be ajaxified, allowing user to click the button multiple times to push the item object into the shoppping cart array.

  end
end
