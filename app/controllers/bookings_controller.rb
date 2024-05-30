class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.new
    @planet = Planet.find(params[:planet_id])
  end

  def create
    @planet = Planet.find(params[:planet_id])
    @booking = Booking.new(bookings_params)
    @booking.planet = @planet
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :planet_id)
  end
end
