class Astrologist < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_one_attached :photo

  validates :experience, presence: true
  validates :price, presence: true
  validates :speciality, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:speciality],
    associated_against: {
      user: [:first_name, :last_name]
    },
    using: {
      tsearch: { prefix: true }
    }

  def rating_average
    return 0 if reviews.empty?

    ratings = reviews.pluck(:rating)
    return (ratings.sum / ratings.length)
  end
end
