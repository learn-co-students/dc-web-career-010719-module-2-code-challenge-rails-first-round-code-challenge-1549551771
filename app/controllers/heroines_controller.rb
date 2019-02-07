class HeroinesController < ApplicationController

  before_action :get_heroine, only: %i(show)

  def index
    @heroines = Heroine.all
  end

  def show
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save!
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
