class RestaurantsController < ApplicationController
  def wines
  end
  def index
    @menus = Menu.all.where(user_type: "Sommelier/Restauranteur")
  end
  def show
    @menu = Menu.find params[:menu_id]
    # @wines = Wines.menu.all.where(user_type: "Sommelier/Restauranteur")
    @wines = @menu.wines
  end
  private
  def find_menu
    @menu = Menu.find params[:menu_id]
  end
end
