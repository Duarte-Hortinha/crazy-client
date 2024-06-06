class Booking < ApplicationRecord
  has_one :review, dependent: :destroy # changed 05/06
  belongs_to :restaurant
  belongs_to :client
end
