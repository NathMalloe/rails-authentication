class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @booking_list_as_owner = []
    @booking_list_as_traveller = []
    @bookings.each do |booking|
      @booking_list_as_owner << booking if booking.rocket.user == current_user
      @booking_list_as_traveller << booking if booking.user == current_user
    end
  end

  def show
  
    @booking = Booking.find(params[:id])

    @marker = [{
      lat: @booking.rocket.latitude,
      lng: @booking.rocket.longitude,
      info_window_html: render_to_string(partial: "rockets/info_window", locals: {rocket: @booking.rocket}),
      marker_html: render_to_string(partial: "rockets/marker")
    }]

  end

  def new
    @booking = Booking.new
  end

  def create
    @rocket = Rocket.find(params[:rocket_id])
    @booking = Booking.new(booking_params)
    @booking.rocket = @rocket
    @booking.user = current_user
    @booking.price = total_price(@booking, @rocket)
    @booking.status = "booked"
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def total_price(booking, rocket)
    total_days = booking.end_date - booking.start_date + 1
    return total_days * rocket.price_per_earthday
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
