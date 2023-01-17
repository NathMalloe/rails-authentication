class Rocket < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :destination, presence: true, inclusion: { in: %w(Mars Earth Saturn Pluton Venus Mercure Moon), message: "%{value} is not a valid planet. Please choose a planet between :  Mars, Earth, Saturn, Pluton, Venus, Mercure and Moon."}
  validates :description, presence: true, length: { minimum: 40 }
  validates :rating, :inclusion => { :in => 0..5 }, :presence => { :message => " must be within 0-5" }
  validates :name, presence: true, numericality: { greater_than: 1 }
end
