class PaymentsController < ApplicationController
  # before_action :user_details
  def new
    @purchase = current_user.purchases.where(state: 'pending').find(params[:purchase_id])
    @user = current_user
  end
end
  

