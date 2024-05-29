class BookingsController < ApplicationController
  def create
    @planet = Planet.find(params[:planet_id])
    @booking = Booking.new(bookings_params)
    @booking.planet = @planet
    @booking.save!
    redirect_to planet_path(@planet)
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :planet_id)
  end
end
