class SessionsController < ApplicationController


        # # skip_before_action :current_user, only: [:create]
        skip_before_action :redirect_if_not_logged_in, only: [:new, :create]
    
      def new
        @user = User.new
      end
    
      def create
        # @user = User.find_or_create_by(uid: auth['uid']) do |u|
        #   u.name = auth['info']['name']
        #   u.email = auth['info']['email']
        #   u.image = auth['info']['image']
        # end
     
        # session[:user_id] = @user.id
     
        # render 'welcome/home'

      #  if @user = User.find_or_create_by(uid: auth['uid']) do |u|
      #     u.name = auth['info']['name']
      #     u.email = auth['info']['email']
        
      #  binding.pry 
       
        if auth_hash = request.env["omniauth.auth"]
          @user = User.find_or_create_by_omniauth(auth_hash)
          session[:user_id] = @user.id
    
          redirect_to @user
        else
          @user = User.find_by(email: params[:user][:email])
            if @user && @user.authenticate(params[:user][:password])
    
                session[:user_id] = @user.id
    
                redirect_to @user
            else
                flash[:message] = "Your email or password were incorrect."
                redirect_to signin_path
            end
        end
      end
    



      def destroy
           session.delete :user_id
    
           redirect_to root_path
       end
    
       private
    
       def auth
         request.env['omniauth.auth']
       end
    
    end
    

# def new 
#     @user = User.new 
#     end 
    
#     def create 
#     @user = User.find_by(name: params[:name])
#     if @user&.authenticate(params[:password])
#     session[user.id] = user.id 
#     redirect_to user_path(@user)
    
#     end 
#     end 
    
    
#     def destroy 
#     reset_session
#     redirect_to root_path
    
#     end 
    
    
#     private 
    
#     def user_params 
#     params.require(:user).permit(:name, :email, :password)
#     end 
    
    
    
    
    # end
    

