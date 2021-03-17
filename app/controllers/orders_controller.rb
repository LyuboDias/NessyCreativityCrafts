class OrdersController < ApplicationController


 def new
  @order = current_cart.order 
 end
 
 def create
   @order = current_cart.order
   
  #  TODO when current_cart status is 'paid'(stripe payment was succesful) reset current_cartand 
   if @order.update_attributes(order_params.merge(status: 'paid'))
    session[:cart_token] = nil
    #  redirect_to root_path
   else 
    render :new
   end
 end

 private

 def order_params
   params.require(:order).permit(:first_name, :last_name) 
 end
 
 
end