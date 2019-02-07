class HeroinesController < ApplicationController

before_action :find_heroine, only: [:show]

  def index
    @heroines = Heroine.all
  end

  def show
  end

  private
  def find_heroine
    @heroine = Heroine.find(params[:id])
  end
end
