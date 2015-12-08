class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  # def edit
  #   @user = find_user
  # end

  # def update
  #   user = find_user
  #   user.update(user_params)
  #   redirect_to(user_index_path)
  # end


 

  
end