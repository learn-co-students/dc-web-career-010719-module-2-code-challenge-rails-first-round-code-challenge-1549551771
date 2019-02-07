class HeroinesController < ApplicationController

  before_action :get_heroine, only: %i(show)

  def index
    if params[:q]
      @heroines = Heroine.search_by_power(params[:q])
    else
      @heroines = Heroine.all
    end
  end

  def show
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.save
      redirect_to @heroine
    else
      render :new
    end
  end

  private 

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def get_heroine
    @heroine = Heroine.find(params[:id])
  end
end
