class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings, dependent: :destroy
  has_many :rockets, dependent: :destroy
  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :rating, :inclusion => { :in => 0..5 }, :presence => { :message => " must be within 0-5" }
  validates :planet_race, inclusion: { in: %w(Martian Human Saturnian Plutonian Venusian Mercurian Moonian), message: "%{value} is not a valid race. Please choose a race between : Martian, Human, Saturnian, Plutonian, Venusian, Mercurian, Moonian."}
end
