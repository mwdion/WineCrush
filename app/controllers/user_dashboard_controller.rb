class UserDashboardController < ApplicationController
  def index
     @menus = Menu.all
  end
end
