class Booking < ApplicationRecord
  has_one :review, dependent: :destroy # changed 05/06
  belongs_to :restaurant
  belongs_to :client
  validates :booking_start, :party_count, presence: true
  validates :party_count, numericality: { only_integer: true, in: 1..50 }

  def review_deadline
    booking_start + 72.hours
  end

  def review_active?
    Time.current < review_deadline
  end

  def time_until_review_deadline
    review_deadline - Time.current
  end
end
