class UserDashboardController < ApplicationController
  def index
    @menus = current_user.menus
  end
end
