class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]
  skip_before_action :authenticate_user!, only: [ :site ]

  def home
  end

  def site
  end

   def profile
    @user = current_user
  end
end
