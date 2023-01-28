class RocketsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_rocket, only: [:show, :edit, :update, :destroy]

  def index
    Rocket.algolia_reindex!

    @rockets = Rocket.all
    @rockets = @rockets.search(params[:query], filters: price_filter)

    # @markers = @rockets.geocoded.map do |rocket|
    #   {
    #     lat: rocket.latitude,
    #     lng: rocket.longitude,
    #     info_window_html: render_to_string(partial: "info_window", locals: {rocket: rocket}),
    #     marker_html: render_to_string(partial: "marker")
    #   }
    #end
  end

  def new
    @rocket = Rocket.new
    @rocket.user = current_user
  end

  def create
    @rocket = Rocket.new(rocket_params)
    @rocket.user = current_user
    if @rocket.save!
      redirect_to rockets_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def delete
    @rocket.destroy
    redirect_to rockets_path, status: :see_other
  end

  def show
    @booking = Booking.new
    @marker = [{
      lat: @rocket.latitude,
      lng: @rocket.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: {rocket: @rocket}),
      marker_html: render_to_string(partial: "marker")
    }]
  end

  private

  def set_rocket
    @rocket = Rocket.find(params[:id])
  end

  def rocket_params
    params.require(:rocket).permit(:name, :destination, :description, :price_per_earthday, :rating, :user, :photo) # Adding picture url ?
  end

  def price_filter
    filters = []
    filters << "price_per_earthday >= #{params[:min_price]}" if params[:min_price].present?
    filters << "price_per_earthday <= #{params[:max_price]}" if params[:max_price].present?
    filters.join(" AND ")
  end
end
