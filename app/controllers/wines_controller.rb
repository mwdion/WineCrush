class WinesController < ApplicationController
  before_action :find_menu
  before_action :find_wine, only: [:show, :edit, :update, :destroy]

  def index
    @wines = Wine.all
    @menus = Menu.all
  end

  def show
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = @menu.wines.create wine_params
    if @wine.save == true 
    redirect_to menu_path(@menu)
    else 
    render :new
    end
  end

  def edit
  end

  def update
    @wine.update_attributes wine_params
    redirect_to menu_path(@menu)
  end

  def destroy
    @wine.delete
    redirect_to menu_path(@menu)
  end

  private
  def wine_params
    params.require(:wine).permit(:vintage, :country, :region, :purveyor, :grape, :style, :btg, :btb)
  end

  def find_menu
    @menu = Menu.find params[:menu_id]
  end

  def find_wine
    @wine = Wine.find params[:id]
  end
end