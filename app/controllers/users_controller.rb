class UsersController < ApplicationController

  before_filter :authenticate_user!



  def index
      @users = User.all
      @days = Day.all
  end

  def show
    @user = User.find(params[:id])
    @users = User.all
    #if amin statements in view
  end

  def update
  end

  def promote_to_admin
    @user= User.find(params[:email])
    @user.admin != @user.admin
    redirect_to list_pages_path
  end

end
