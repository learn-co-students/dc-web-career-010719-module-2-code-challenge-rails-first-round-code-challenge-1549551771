class HeroinesController < ApplicationController

  before_action :get_heroine, only: %i(show)

  def index
    @heroines = Heroine.all
  end

  def show
  end

  def new
  end

  def create
  end

  private 

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def get_heroine
    @heroine = Heroine.find(params[:id])
  end
end
