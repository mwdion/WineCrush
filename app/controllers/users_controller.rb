class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update]  
  def edit
  end

  def update
    @user.update_attributes user_params
    redirect_to tastes_path(@taste)
  end
  private
  def find_user
    @user = User.find params[:id]
  end
  def user_params
    params.require(:user).permit(:email, :user_type, taste_ids:[])
  end
end
