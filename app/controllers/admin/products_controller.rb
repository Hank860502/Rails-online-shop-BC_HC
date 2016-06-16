class Admin::ProductsController < ApplicationController
  before_action :authenticate_admin

  def index
    @products = Product.all
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all

  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      flash[:success] = "Your product has been updated!"
      redirect_to admin_products_path
    else
      flash[:danger] = @product.errors.full_messages.to_sentence
      render 'edit'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @categories = Category.all
    p @categories
  end

  def create
    @categories = Category.all
    @product = Product.new(product_params)
    if params[:category_ids] && @product.save
      category_ids = params[:category_ids]
      category_ids.each do |id|
        category = Category.find(id)
        ProductsCategory.create(category_id: category.id, product_id: @product.id)
      end
      flash[:success] = "You created the product"
      redirect_to @product
    else
      render 'new'
      flash[:danger] = @product.errors.full_messages.to_sentence
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_products_path
  end

  private
  def product_params
    params.require(:product).permit(:name,:price,:description,:image_url, :stock, :currency, :category_id)
  end

end
