class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    session[:user_id] = @user.id
    redirect_to('questions/index')
  end

  def show
    @user = current_user
  end
end
