class MenusController < ApplicationController
  before_action :find_menu, only: [:show, :edit, :update, :destroy]  
  def index
    @menus = current_user.menus
  end

  def show
  end

  def new
    @menu = current_user.menus.new
  end

  def create
    @menu = current_user.menus.create menu_params
    if @menu.save == true && current_user.user_type == "Sommelier/Restauranteur"
      redirect_to restaurant_dashboard_index_path
    elsif @menu.save == true && current_user.user_type == "Wino"
    redirect_to user_dashboard_index_path
    else
    render :new
    end
  end

  def edit
  end

  def update
    @menu.update_attributes menu_params
    if current_user.user_type == "Sommelier/Restauranteur"
      redirect_to restaurant_dashboard_index_path
    elsif current_user.user_type == "Wino"
      redirect_to user_dashboard_index_path
    end
  end

  def destroy
    @menu.delete
    if current_user.user_type == "Sommelier/Restauranteur"
      redirect_to restaurant_dashboard_index_path
    elsif current_user.user_type == "Wino"
      redirect_to user_dashboard_index_path
    end
  end

  private
  def find_menu
    @menu = Menu.find params[:id]
  end

  def menu_params
    params.require(:menu).permit(:name, :description, :user_id)
  end
end
