class PlanetsController < ApplicationController

  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(param[:id])

  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planets_params)
    @planet.save
    redirect_to planet_path(@planets)
  end

  private

  def planets_params
    params.require(:planet).permit(:name, :detail, :price)
  end
end
