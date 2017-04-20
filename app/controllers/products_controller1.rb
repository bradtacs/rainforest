class ProductsController < ApplicationController
  # these are setting up every page in the views

  def show
    @product = Product.find(params[:id])

    if current_user
      @review = @product.reviews.build
    end
  end
end
