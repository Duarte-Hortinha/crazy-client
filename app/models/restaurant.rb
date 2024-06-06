class Restaurant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  validates :ccr_acceptance, numericality: { in: 0.0..5.0 }
  validates :capacity, numericality: { only_integer: true, in: 1..200 }
end
