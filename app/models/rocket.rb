class Rocket < ApplicationRecord
  # include RocketConcern
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, presence: true
  validates :destination, presence: true, inclusion: { in: %w(Mars Earth Saturn Pluton Venus Mercure Moon), message: "%{value} is not a valid planet. Please choose a planet between :  Mars, Earth, Saturn, Pluton, Venus, Mercure and Moon."}
  validates :description, presence: true, length: { minimum: 2 }
  validates :rating, :inclusion => { :in => 0..5 }, :presence => { :message => " must be within 0-5" }
  validates :name, presence: true

  include AlgoliaSearch

  algoliasearch do
    attribute :name, :description, :destination
  end
end
