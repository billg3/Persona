class WelcomeController < ApplicationController
    skip_before_action :redirect_if_not_logged_in
  
    def home
      if session[:user_id]
        @user = User.find(session[:user_id])
        speech = ESpeak::Speech.new("welcome to persona!") 
    end
  
  end
end 

  