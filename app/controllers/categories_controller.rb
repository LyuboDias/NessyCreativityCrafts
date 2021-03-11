class CategoriesController < ApplicationController

  def index
   # here we find columns in select query and use them as methods on resulting objects
    @categories = Category.joins(:products).select('categories.*, count(products.id) as products_count').group('categories.id').order(:title)
  end
end