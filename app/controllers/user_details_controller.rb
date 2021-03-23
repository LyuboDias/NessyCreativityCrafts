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
    # TODO user should be able to create only user_detail
     # if UserDetail.count < 1 
      @user_detail = UserDetail.new(strong_params)
      
      if @user_detail.save
        redirect_to user_detail_path(@user_detail)
        # redirect_to profile_path
      else
        # redirect_to root_path
        render :new
      end
    # end
   end

   def edit
     @user_detail = UserDetail.find(params[:id])
   end

   def update
     @user_detail = UserDetail.find(params[:id])
     if @user_detail.update(strong_params)
       redirect_to user_detail_path(@user_detail)
     else
       render :update
     end
   end

   def destroy
     @user_detail = UserDetail.find(params[:id])
     @user_detail.destroy
     # redirect_to user_details_path
     redirect_to profile_path
   end

   private

   def strong_params
     params.require(:user_detail).permit(:f_name, :l_name, :address, :postcode, :phone, :photo)
   end
end