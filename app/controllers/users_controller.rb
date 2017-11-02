class UsersController < ApplicationController
  
  def index
  end
  
  def new
    @user = User.new
  end

  def create
    # @user = User.new
    # @user.email = params[:user][:email]
    # @user.password = params[:user][:password]
    # if @user.save     
    #     session[:user_id] = @user.id
    #     redirect_to root_path # GET "/"
    # else 
    #     render 'users/new'
    # end
  end
end
