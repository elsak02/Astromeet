class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :astrologist
  has_many :reviews
  validates :date, presence: true
  validates :time, presence: true
end
