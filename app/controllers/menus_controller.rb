class MenusController < ApplicationController
  before_action :find_menu, only: [:show, :edit, :update, :destroy]  
  def index
    @menus = Menu.all
  end

  def show
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.create menu_params
    if @menu.save == true
    redirect_to restaurant_dashboard_index_path
    else
    render :new
    end
  end

  def edit
  end

  def update
    @menu.update_attributes menu_params
    redirect_to restaurant_dashboard_index_path
  end

  def destroy
    @menu.delete
    redirect_to restaurant_dashboard_index_path
  end

  private
  def find_menu
    @menu = Menu.find params[:id]
  end

  def menu_params
    params.require(:menu).permit(:name, :description)
  end
end
