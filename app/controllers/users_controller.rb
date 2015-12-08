class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def edit
  end

  def update
    @user.update(user_params) 
    redirect_to(users_path)
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :encrypted_password, :role_id, :user_image, :user_location)
  end

  
end