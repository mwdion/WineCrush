class TastesController < ApplicationController
  before_action :find_taste, only: [:show, :edit, :update, :destroy]  
  def index
    @tastes = Taste.all
  end

  def show
  end

  def new
    @taste = Taste.new
  end

  def create
    @taste = Taste.create taste_params
    if @taste.save == true
    redirect_to tastes_path
    else
    render :new
    end
  end

  def edit
  end

  def update
    @taste.update_attributes taste_params
    redirect_to tastes_path(@taste)
  end

  def destroy
    @taste.delete
    redirect_to tastes_path(@tastes)
  end

  private
  def find_taste
    @taste = Taste.find params[:id]
  end

  def taste_params
    params.require(:taste).permit(:flavor, :style)
  end
end
