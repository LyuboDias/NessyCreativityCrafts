class OrderItemsController < ApplicationController
  def index
    @items = current_cart.order.items
  end

   def create
    current_cart.add_item(
      product_id: params[:product_id], 
      quantity: params[:quantity]
    ) 

    respond_to do |format|
      format.html { redirect_to request.referrer, notice: "You have succsefuly added this item!" }
    end
  end

  def destroy
    current_cart.remove_item(id: params[:id])
      # redirect_to cart_path

    respond_to do |format|
      format.html { redirect_to request.referrer, notice: "You have succsefuly removed this item!" }
    end
  end
end