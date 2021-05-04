class PurchasesController < ApplicationController
 def create
  product = Product.find(params[:item_id])
  
  # TODO when press purchase need to create purchase or checkput session that display all items titles and pass the current_cart sub total amount 

  # create purchase with current_cart instead with single product
  # cart = current_cart
  # purchase  = Purchase.create!(product_sku: "Checkout nowwwwwww", amount: current_cart.sub_total.to_f / 100, state: 'pending', user: current_user)

  #  session = Stripe::Checkout::Session.create(
  #   payment_method_types: ['card'], 
  #   line_items: [{  
  #     name: product.sku,
  #     amount: current_cart.sub_total.to_int,
  #     currency: 'gbp',
  #     quantity: 1 
  #   }],
  #   success_url: purchase_url(purchase),
  #   cancel_url: purchase_url(purchase)
  # ) 
 
  purchase  = Purchase.create!(product: product, product_sku: product.sku, amount: current_cart.sub_total.to_f / 100, state: 'pending', user: current_user)
   


  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'], 
    line_items: [{  
      name: product.title,
      images: [product.images],
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

