class PurchasesController < ApplicationController
 def create
  # product = Category.product.find(params[:item_id])

  # TODO when press purchase need to create purchase or checkput session that display all items titles and pass the current_cart sub total amount 
  mugs = Category.create!(title: "mugs")
  product = Product.create!(title: 'My cart', sku: 'Thank you for your busenes', price: 25, images: 'https://images.pexels.com/photos/553236/pexels-photo-553236.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', category: mugs)
  # purchase  = Purchase.create!(product: product, product_sku: product.sku, amount: current_cart.sub_total.to_f / 100, state: 'pending', user: current_user)
 


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
   @purchase = current_user.purchases.find(params[:id])  
 end
 
  
end
