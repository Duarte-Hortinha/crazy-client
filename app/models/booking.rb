class Booking < ApplicationRecord
  has_many :reviews
  belongs_to :restaurant
  belongs_to :client
end
