class SessionsController < ApplicationController
    # skip_before_action :login_required, :only => [:new, :create]

    def new
        @user = User.new
    end

    def create   
        # @user = User.find_by(:name => params[:user][:name])
        # if @user && @user.authenticate(params[:user][:password])
        #     session[:user_id] = @user.id
        #     redirect_to user_path(@user)
        # else
        #     redirect_to root_path
        # end        
        # if params[:name].present? && params[:password].present?
        @user = User.find_by(:name => params[:user][:name])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash.now[:notice] = "Could not find that person, sorry!"
            redirect_to root_path
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to root_path
    end
      
  
end
