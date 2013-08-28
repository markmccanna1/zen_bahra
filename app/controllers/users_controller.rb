class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    puts "3" * 100
    puts params.inspect
    @user = User.create(params[:user])
    # session[:user_id] = @user.id

    redirect_to('users/new')
  end
end
