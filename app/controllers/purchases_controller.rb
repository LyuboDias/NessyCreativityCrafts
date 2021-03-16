class PurchasesController < ApplicationController
 def create
  product = Product.new(title: 'testing', sku: 'this is testing for stripe payments', price: 25)
  purchase  = Purchase.create!(product: product, product_sku: product.sku, amount: product.price, state: 'pending', user: current_user)

  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{ 
      name: product.title,
      # images: [product.photo_url],
      amount: product.price_cents,
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
