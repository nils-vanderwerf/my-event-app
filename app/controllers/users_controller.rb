class UsersController < ApplicationController
  before_action :authenticate_user!, only: %i[show]
  
  def new
  end

  def profile
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

end
