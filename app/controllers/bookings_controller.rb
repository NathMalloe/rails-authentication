class BookingsController < ApplicationController
  def index
  end

  def show
    # @rocket = Rocket.find(params[:id])
    @booking = Booking.find(params[:id])
  end

  def new
    @rocket = Rocket.find(params[:rocket_id])
    @booking = Booking.new
  end

  def create
    @rocket = Rocket.find(params[:rocket_id])
    @booking = Booking.new(booking_params)
    @booking.rocket = @rocket
    @booking.user = current_user
    @booking.price = total_price(@booking, @rocket)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def total_price(booking, rocket)
    # @rocket = Rocket.find(params[:rocket_id])
    # @booking = Booking.find(params[:booking_id])
    total_days = booking.end_date - booking.start_date + 1
    return total_days * rocket.price_per_earthday
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
