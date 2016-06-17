class CartsController < ApplicationController

  def index
    @user = current_user
    @product = params[:product]
  end
end
