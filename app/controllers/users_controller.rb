class UsersController < ApplicationController
before_action :authenticate_user!, only: %i[show, create]

def show
  @user = current_user
end

def create
 console.log(current_user)
end

end
