class SessionsController < ApplicationController



def new 
    @user = User.new 
    end 
    
    def create 
    @user = User.find_by(name: params[:name])
    if @user&.authenticate(params[:password])
    session[user.id] = user.id 
    redirect_to user_path(@user)
    
    end 
    end 
    
    
    def destroy 
    reset_session
    redirect_to root_path
    
    end 
    
    
    private 
    
    def user_params 
    params.require(:user).permit(:name, :email, :password)
    end 
    
    
    
    
    end
    
end
