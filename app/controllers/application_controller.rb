class ApplicationController < ActionController::Base
  helper_method :logged_in?, :categories
  before_action :authenticate_user!

  # we want cart to be created as sooon as make first request
  before_action :current_cart

  def categories
    @categories = Category.all
  end
  

  def logged_in?
    current_user != nil
  end

  def current_cart
    @current_cart ||= ShoppingCart.new(token: cart_token)
  end
  # pushes current_cart method in our view file
  helper_method :current_cart

  private 

  def cart_token
    return @cart_token unless @cart_token.nil?

    session[:cart_token] ||= SecureRandom.hex(8)
    @cart_token = session[:cart_token]
  end
  
end
