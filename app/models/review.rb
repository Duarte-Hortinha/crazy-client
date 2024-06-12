class Review < ApplicationRecord
  belongs_to :booking
  validates :comment, length: { in: 5..200 }

  # indirect validation: step 15, min 30 and mx 120
  # after_save :set_ccr

  # def set_ccr
  #   booking = Booking.find(self.booking.id)
  #   client = Client.find(booking.client.id)
  #   client.update(ccr: 3)
  # end
end
