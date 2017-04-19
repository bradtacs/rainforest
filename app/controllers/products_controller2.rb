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

  end
end
