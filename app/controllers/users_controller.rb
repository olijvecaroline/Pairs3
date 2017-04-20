class UsersController < ApplicationController

  before_filter :authenticate_user!

  def index
      @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @users = User.all
    #if amin statements in view
  end
  
end
