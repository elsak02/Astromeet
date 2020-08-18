class Astrologist < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :experience, presence: true
  validates :price, presence: true
end
