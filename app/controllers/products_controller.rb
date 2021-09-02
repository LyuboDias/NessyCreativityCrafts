class ProductsController < ApplicationController
skip_before_action :authenticate_user!

  def index
    @category = Category.find(params[:category_id])
    @products = @category.products.order(:title)
  end

  def show
    @category = Category.find(params[:category_id])
    @product = Product.find(params[:id])
  end
  
  private

  def strong_params
    params.require(:product).permit(:title, :sku, :price, :description, images: [])
  end
end    
