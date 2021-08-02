class PurchasesController < ApplicationController
  def create
  
    if current_user.user_detail == nil  
      redirect_to profile_path

    elsif (current_cart.sub_total.to_f / 100) >= 30
      purchase  = Purchase.create!(product_sku: "you have made purchase of..", amount: current_cart.sub_total.to_f / 120, state: 'pending', user: current_user)
      
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'], 
        line_items: [{  
          name: "#{current_user.user_detail.f_name}, your total is ...", 
          # images: [product.images],
          amount: (current_cart.sub_total / 1.2).to_int,
          currency: 'gbp',
          quantity: 1 
        }],
        success_url: purchase_url(purchase),
        cancel_url: purchase_url(purchase)
      ) 

      purchase.update(checkout_session_id: session.id)
      redirect_to new_purchase_payment_path(purchase)
 
    else

      purchase  = Purchase.create!(product_sku: "you have made purchase of..", amount: current_cart.sub_total.to_f / 100, state: 'pending', user: current_user)
      
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'], 
        line_items: [{  
          name: "#{current_user.user_detail.f_name}, your total is ...", 
          # images: [product.images],
          amount: current_cart.sub_total.to_int,
          currency: 'gbp',
          quantity: 1 
        }],
        success_url: purchase_url(purchase),
        cancel_url: purchase_url(purchase)
      ) 

      purchase.update(checkout_session_id: session.id)
      redirect_to new_purchase_payment_path(purchase)

    end
  end

  def show
    # sent payment confirmation email and reset the current cart 
    @cart = current_cart.order.items
    @user = current_user
    @purchase = current_user.purchases.find(params[:id])  

    # sending a confirmation email for successful payment
    if @purchase.state == 'paid'
      UserMailer.payment(@user, @cart, @purchase).deliver_now
    end
    @cart.destroy_all
  end
  
end 

