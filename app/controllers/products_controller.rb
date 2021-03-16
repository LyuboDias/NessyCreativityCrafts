class ProductsController < ApplicationController
skip_before_action :authenticate_user!

  def index
    @category = Category.find(params[:category_id])
    @products = @category.products.order(:title)
    # @products = @category.products.includes(:variants).order(:title)
  end
end  