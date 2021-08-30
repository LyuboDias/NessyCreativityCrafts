class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :contacts, :covid, :delivery, :privacy, :qanda, :returns, :terms, :help ]

  def home
    @categories = Category.all
  end

  def about
    @categories = Category.all
  end

  def contacts
    @categories = Category.all
  end

  def covid
    @categories = Category.all
  end

  def delivery
    @categories = Category.all
  end

  def help
    @categories = Category.all
  end

  def privacy
    @categories = Category.all
  end

  def qanda
    @categories = Category.all
  end

  def returns
    @categories = Category.all
  end

  def terms
    @categories = Category.all
  end

  def profile
    @categories = Category.all
    @user = current_user
  end
end
