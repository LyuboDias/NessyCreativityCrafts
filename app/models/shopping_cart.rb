class ShoppingCart

  delegate :sub_total, to: :order

  def initialize(token:)
    @token = token
  end

  def order
    @order ||= Order.find_or_create_by(token: @token,status: 'cart') do |order|
      order.sub_total = 0
    end 
  end

  def items_count
    order.items.sum(:quantity)
  end

  def add_item(product_id:, quantity:, message:, user_pic:, color:, size:)
      product = Product.find(product_id)

      order_item = order.items.find_or_initialize_by(
        product_id: product_id
      )

      order_item.price = product.price 
      order_item.quantity = quantity
      order_item.message = message
      order_item.user_pic = user_pic
      order_item.color = color
      order_item.size = size      

      # transaction will ensure we have the correct data when ever we add or remove an item
      ActiveRecord::Base.transaction do
        order_item.save
        update_sub_total!
      end

  end

  def remove_item(id:)
    ActiveRecord::Base.transaction do
      order.items.destroy(id)
      update_sub_total!
    end
  end

  private

  def update_sub_total!
    order.sub_total = order.items.sum('quantity * price_cents') 
    order.save
  end
  
 
end