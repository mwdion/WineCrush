class WinesController < ApplicationController
  before_action :find_wine, only: [:show, :edit, :update, :destroy]

  def index
    @wines = Wine.all.where(user_id: current_user.id)
    @menus = Menu.all
    @tastes = Taste.all
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
    # if wine_ids[].include? wine.id
    #   Wine.update_all([visible:, "yes"], id: => params[wine_ids])
    # else
    #   Wine.update_all([visible:, "no"], id: => params[wine_ids])
    # end
    redirect_to wines_path
  end

  private
  def wine_params
    params.require(:wine).permit(:vintage, :country, :region, :purveyor, :grape, :style, :btg, :btb, :menuable_type, :menuable_id)
  end

  def find_menu
    @menu = Menu.find params[:menu_id]
  end

  def find_wine
    @wine = Wine.find params[:id]
  end
end