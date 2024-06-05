class Review < ApplicationRecord
  belongs_to :booking
  validates :comment, length: { in: 5..100 }
end
