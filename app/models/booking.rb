class Booking < ApplicationRecord
  belongs_to :rocket
  belongs_to :user
  has_many_attached :photos
  validates :start_date, presence: true, comparison: { greater_than: Date.today }
  validates :end_date, presence: true, comparison: { greater_than: :start_date }
  # validates :price, presence: true
  # validates :status, presence: true, length: { minimum: 2 }

  def total_price
    # @rocket = Rocket.find(params[:rocket_id])
    # @booking = Booking.find(params[:booking_id])
    total_days = end_date - start_date + 1
    total_days * rocket.price_per_earthday
  end
end
