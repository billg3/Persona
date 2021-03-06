class UsersController < ApplicationController
    
    skip_before_action :current_user, only: [:create]
    skip_before_action :redirect_if_not_logged_in, only: [:new, :create]
  


def index 
@users = User.all
end 


    def new  
@user = User.new 
    end 


    def create
        @user = User.create(user_params)
        if @user.save
          session[:user_id] = @user.id
          flash[:msg] = "Welcome "
          redirect_to root_path
        else
          render :new
        end
      end
  


def most 
  @user = User.most 
end 


def show 

    @user = User.find(params[:id])

    end 





    private 

    def user_params 
params.require(:user).permit(:name, :email, :password)
    end 



end 

