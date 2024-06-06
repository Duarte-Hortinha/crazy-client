class Client < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  validates :phone_number, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true

  # validates :ccr, numericality: { in: 0.0..5.0 }
  # validates :ccr, numericality: { greater_than_or_equal_to: 0.0, less_than_or_equal_to: 5.0 }
end





# grep the review variables (punctuality and attendance)
# change the ccr score acording with those variables
# display that ccr score
