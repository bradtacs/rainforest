class ProductsController < ApplicationController
  # these are setting up every page in the views
  def index
      @products = Product.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
