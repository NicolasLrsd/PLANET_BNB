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

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(bookings_params)
    redirect_to bookings_path
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :planet_id)
  end
end
