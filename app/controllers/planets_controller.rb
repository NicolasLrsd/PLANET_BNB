class PlanetsController < ApplicationController
  before_action :set_planet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create]


  def home
    @planets = Planet.all
    if params[:query].present?
      @planets = @planets.where("name ILIKE ?", "%#{params[:query]}%")
    end
  end

  def index
    @planets = Planet.where(user: current_user)
  end

  def show
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.user = current_user
    if @planet.save
      redirect_to planet_path(@planet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @planet.update(planet_params)
    redirect_to planet_path(@planet)
  end

  def destroy
    @planet.destroy
    redirect_to planets_path, status: :see_other
  end

  private

  def planet_params
    params.require(:planet).permit(:detail, :name, :price, :photo)
  end

  def set_planet
    @planet = Planet.find(params[:id])
  end
end
