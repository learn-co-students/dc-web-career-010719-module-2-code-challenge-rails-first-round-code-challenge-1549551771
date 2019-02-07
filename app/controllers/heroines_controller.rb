class HeroinesController < ApplicationController
  before_action :get_hero, only: [:show]


  def index
    @heroines = Heroine.all
  end

  def show
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(hero_params)
    if @heroine.save
      redirect_to @heroine
    else
      render :new
    end
  end

  def search
    search = params[:q]
    
    power = Power.find_by(name: search)
    @heroines = []

    if !power.nil?
      Heroine.all.each do |hero|
        if hero.power_id == power.id
          @heroines<< hero
        end
      end
    else
      @heroines = Heroine.all
    end
  render :index
  end


  private

  def hero_params
    return params.require(:heroine).permit(:name, :super_name,:power_id)
  end

  def get_hero
    @heroine = Heroine.find(params[:id])
  end
end
