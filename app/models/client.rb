class Client < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  validates :phone_number, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true
  validates :ccr, numericality: { in: 0.0..5.0 }
  # validates :phone_number, numericality: {   } - do this to admit "+" and only integers

  scope :by_first_name, ->(first_name) { where("first_name LIKE :prefix", prefix: "%#{first_name}%") if first_name.present? }
  scope :by_last_name, ->(last_name) { where("last_name LIKE :prefix", prefix: "%#{last_name}%") if last_name.present? }
  scope :by_phone_number, ->(phone_number) { where("phone_number LIKE :prefix", prefix: "#{phone_number}%") if phone_number.present? }

  def self.filter(first_name, last_name, phone_number)
    by_first_name(first_name).by_last_name(last_name).by_phone_number(phone_number)
  end
end





# grep the review variables (punctuality and attendance)
# change the ccr score acording with those variables
# display that ccr score
