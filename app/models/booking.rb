class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :astrologist
  validates :date, presence: true
  validates :time, presence: true
end
