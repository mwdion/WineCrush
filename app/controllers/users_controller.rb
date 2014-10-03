class UsersController < ApplicationController
  def edit
  end

  def update
    @user.update_attributes user_params
    redirect_to tastes_path(@taste)
  end
  
end
