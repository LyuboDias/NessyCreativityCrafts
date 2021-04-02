class UserDetailsController < ApplicationController
  # def index
  #    if params[:query1].present?
  #      @chefs = Chef.search_by_location(params[:query1])
  #      @searched_chefs = @chefs.geocoded

  #        @markers = @searched_chefs.map do |chef|
  #          {
  #            lat: chef.latitude,
  #            lng: chef.longitude,
  #            infoWindow: render_to_string(partial: "info_window", locals: { chef: chef }),
  #            image_url: "https://res.cloudinary.com/dzjxqunz7/image/upload/q_auto,f_auto,fl_lossy/v1597931839/knifefork_ywuj7u.png"
  #          }
  #        end
  #    else
  #      @chefs = Chef.geocoded

  #        @markers = @chefs.map do |chef|
  #          {
  #            lat: chef.latitude,
  #            lng: chef.longitude,
  #            infoWindow: render_to_string(partial: "info_window", locals: { chef: chef }),
  #            image_url: "https://res.cloudinary.com/dzjxqunz7/image/upload/q_auto,f_auto,fl_lossy/v1597931839/knifefork_ywuj7u.png"
  #          }
  #        end
  #    end
  #  end

   def show
     @user_detail = UserDetail.find(params[:id])
    
   end

   def new
     @user_detail = UserDetail.new
   end

   def create
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
     @user_detail = UserDetail.find(params[:id])
   end

   def update
     @user_detail = UserDetail.find(params[:id])
     if @user_detail.update(strong_params)
       redirect_to user_detail_path(@user_detail)
     else
      render :new
      #  render :update
     end
   end

   def destroy
     @user_detail = UserDetail.find(params[:id])
     @user_detail.destroy
     redirect_to profile_path
   end

   private

   def strong_params
     params.require(:user_detail).permit(:user_id, :f_name, :l_name, :city, :street, :door_number, :postcode, :phone, :photo)
   end
end