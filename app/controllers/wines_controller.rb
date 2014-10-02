class WinesController < ApplicationController
  before_action :find_wine, only: [:show, :edit, :update, :destroy]
  before_action :find_tastes, only:[:index, :new, :edit]

  def index
    @wines = Wine.all.where(user_id: current_user.id)
    @menus = Menu.all
  end

  def show
  end

  def new
    @wine = Wine.new
  end

  
  def create
    @wine = Wine.create wine_params.merge(user_id: current_user.id)
    if @wine.save == true && current_user.user_type == "Sommelier/Restauranteur"
      redirect_to restaurant_dashboard_index_path
    elsif @wine.save == true && current_user.user_type == "Wino"
    redirect_to user_dashboard_index_path
    else
    render :new
    end
  end

  def edit
  end

  def update
    @wine.update_attributes wine_params
    if current_user.user_type == "Sommelier/Restauranteur"
      redirect_to restaurant_dashboard_index_path
    elsif current_user.user_type == "Wino"
      redirect_to user_dashboard_index_path
    end
  end

  def destroy
    @wine.delete
    if current_user.user_type == "Sommelier/Restauranteur"
      redirect_to restaurant_dashboard_index_path
    elsif current_user.user_type == "Wino"
      redirect_to user_dashboard_index_path
    end
  end  

  def visible
    @wines = Wine.all.where(user_id: current_user.id)
    @wines.each do |wine|
      if params[:wines][:wine_ids].include?(wine.id.to_s)
        wine.visible = "true"
        wine.save
      else
        wine.visible = "false"
        wine.save
      end
    end
    redirect_to wines_path
  end

  private
  def wine_params
    params.require(:wine).permit(:vintage, :country, :region, :purveyor, :grape, :style, :btg, :btb, :menuable_type, :menuable_id)
  end

  def find_tastes
    @tastes = Taste.all
  end

  def find_menu
    @menu = Menu.find params[:menu_id]
  end

  def find_wine
    @wine = Wine.find params[:id]
  end
end