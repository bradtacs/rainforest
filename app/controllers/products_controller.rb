class ProductsController < ApplicationController
  # these are setting up every page in the views
  def index
      @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to products_url
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_url
  end

  pricvate
  def product_params
      params.require(:product).permit(:name, :description, :price_in_cents)
end
