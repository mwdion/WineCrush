class RestaurantsController < ApplicationController
  def wines
  end
  def index
    @menus = Menu.all.where(user_type: "Sommelier/Restauranteur")
  end
  def show
    @menu = Menu.find params[:menu_id]
    @wines = @menu.wines
  end
end
