class RestaurantDashboardController < ApplicationController
  def index
    @menus = Menu.all
  end
end
