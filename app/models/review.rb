class Review < ApplicationRecord
  belongs_to :booking
  validates :rating, presence: true, inclusion: 1..5
end
