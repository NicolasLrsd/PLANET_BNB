class PlanetsController < ApplicationController
  before_action :set_planet, only: [:show]

  def index
    @planets = Planet.all
  end

  def show
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.user = current_user
    @planet.save
    redirect_to planet_path(@planet)
  end

  private

  def planet_params
    params.require(:planet).permit(:detail, :name, :price)
  end

  def set_planet
    @planet = Planet.find(params[:id])
  end
end
