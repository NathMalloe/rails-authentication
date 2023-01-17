class Booking < ApplicationRecord
  belongs_to :rocket
  belongs_to :user
  validates :start_date, presence: true, comparison: { greater_than: Date.today }
  validates :end_date, presence: true, comparison: { greater_than: :start_date }
  validates :price, presence: true
  validates :status, presence: true, length: { minimum: 2 }
end
