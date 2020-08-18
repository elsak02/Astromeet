class Astrologist < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :experience, presence: true
  validates :price, presence: true
end
