class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    session[:user_id] = @user.id
    redirect_to('users/new')
  end

  def show
    @user = User.first
  end
end
