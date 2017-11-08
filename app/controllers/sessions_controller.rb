class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create   
        @user = User.find_by(:name => params[:user][:name])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to root_path
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to login_path
    end
      
    # if params[:email].present? && params[:password].present?
    #     user = User.find_by(:email => params[:email])
    #     if user && user.authenticate(params[:password])
    #       login(user)
    #       redirect_to root_path
    #     else
    #       flash.now[:notice] = "Could not find that person, sorry!"
    #       render :new
    #     end
    #   elsif request.env['omniauth.auth'].present?
    #     # is this the first time I've seen you?
    #     user = User.login_from_omniauth(request.env['omniauth.auth'])
    #     login(user)
    #     redirect_to root_path
    #   end
  
end
