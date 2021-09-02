class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :contacts, :covid, :delivery, :privacy, :qanda, :returns, :terms, :help ]

  def profile
    @user = current_user
  end
end
