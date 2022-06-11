class Taxi < ApplicationRecord
  has_many :rides
  has_many :passengers, through: :rides

  def show_passengers
    self.rides.map { |ride| "#{ride.passengers}" }
  end
end
