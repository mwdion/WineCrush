class RestaurantsController < ApplicationController
  def wines
  end
  def index
    @menus = Menu.all.where(user_type: "Sommelier/Restauranteur")
  end
end
