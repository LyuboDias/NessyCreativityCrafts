class OrderItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :create ]

  def index
    @categories = Category.all
    @items = current_cart.order.items
    @user = current_user 
  end
 
   def create
        current_cart.add_item(
          product_id: params[:product_id], 
          quantity: params[:quantity],
          message: params[:message],
          user_pic: params[:user_pic],
          color: params[:color],
          size: params[:size]
        )     


    respond_to do |format|
      format.html { redirect_to request.referrer, notice: "You have succsefuly added this item!" }
    end
  end


  def destroy
    current_cart.remove_item(id: params[:id])

    respond_to do |format|
      format.html { redirect_to request.referrer, notice: "You have succsefuly removed this item!" }
    end
  end
end