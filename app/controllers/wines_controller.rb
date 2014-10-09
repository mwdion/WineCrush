class WinesController < ApplicationController
  before_action :find_wine, only: [:show, :edit, :update, :destroy, :create_comment, :delete_comment]
  before_action :find_tastes, only:[:index, :new, :edit]
  before_action :find_comment, only: [:delete_comment] 


  def index
    @wines = Wine.all.where(user_id: current_user.id)
    @menus = Menu.all
    @tastes = Taste.all
  end

  def show
    @comment = Comment.new
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

  def create_comment
    @comment = @wine.comments.create comment_params.merge(user_id: current_user.id, email: current_user.email)
    redirect_to wine_path(@wine)
  end

  def delete_comment
    @comment.delete
    redirect_to wine_path(@wine)
  end

  def search_wines
    @wine = Wine.where("grape LIKE ? OR country LIKE ? OR vintage LIKE ? OR region LIKE ? OR purveyor LIKE ? OR style LIKE ? OR btg LIKE ? OR btb LIKE ?", "%#{params[:q]}%", "%#{params[:q]}%","%#{params[:q]}%", "%#{params[:q]}%", "%#{params[:q]}%", "%#{params[:q]}%", "%#{params[:q]}%", "%#{params[:q]}%")
    respond_to do |format|
      format.js
    end
  end

  def recommendations
    @menu = Menu.find params[:menu_id]
    @menu_wines = @menu.wines
    @user_tastes = current_user.tastes
    @recommendations = []
      @user_tastes.each do |taste|
        @menu_wines.each do |flavor|
          @recommendations << flavor if flavor.tastes.include?(taste)
     end
   end
 end

  private
  def wine_params
    params.require(:wine).permit(:image, :vintage, :country, :region, :purveyor, :grape, :style, :btg, :btb, :menuable_type, :menuable_id, taste_ids:[])
  end

  def comment_params
    params.require(:comment).permit(:content, :commentable_type, :commentable_id, :email)
  end

  def find_comment
    @comment = @wine.comments.find params[:comment_id]
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