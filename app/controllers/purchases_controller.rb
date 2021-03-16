class PurchasesController < ApplicationController
 def create
  # products = Product.find(params[:@items])
  product = Product.new(title: 'My cart', sku: 'Thank you for your busenes', price: 25)
  # purchase  = Purchase.create!(product: product, product_sku: product.sku, amount: current_cart.sub_total.to_f / 100, state: 'pending', user: current_user)


  purchase  = Purchase.create!(product: product, product_sku: product.sku, amount: current_cart.sub_total.to_f / 100, state: 'pending', user: current_user)

  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{  
      name: product.title,
      # images: [product.photo_url],
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
   @purchase = current_user.purchases.find(params[:id])  
 end
 
 
end
