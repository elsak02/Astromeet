class Astrologist < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_one_attached :photo

  validates :experience, presence: true
  validates :price, presence: true

  def rating_average
    return 0 if reviews.empty?

    ratings = reviews.pluck(:rating)
    return (ratings.sum / ratings.length)
  end
end
