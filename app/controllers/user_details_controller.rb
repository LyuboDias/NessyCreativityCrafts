class UserDetailsController < ApplicationController

  def show
    @categories = Category.all
    @user_detail = UserDetail.find(params[:id])
  end

  def new
    @categories = Category.all
    @user_detail = UserDetail.new
  end

  def create
    @categories = Category.all
  if UserDetail.count < 1
      @user_detail = UserDetail.new(strong_params)
      @user_detail.user = current_user
      if @user_detail.save
        redirect_to user_detail_path(@user_detail)
      else
        render :new
      end
    else  
      
      redirect_to profile_path, notice: "You have created your details already."
  end
  end

  def edit
    @categories = Category.all
    @user_detail = UserDetail.find(params[:id])
  end

  def update
    @categories = Category.all
    @user_detail = UserDetail.find(params[:id])
    if @user_detail.update(strong_params)
      redirect_to user_detail_path(@user_detail)
    else
    render :new
    #  render :update
    end
  end

  def destroy
    @categories = Category.all
    @user_detail = UserDetail.find(params[:id])
    @user_detail.destroy
    redirect_to profile_path
  end

  private

  def strong_params
    params.require(:user_detail).permit(:user_id, :f_name, :l_name, :city, :street, :door_number, :postcode, :phone, :photo)
  end
end