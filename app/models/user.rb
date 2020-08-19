class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_many :astrologists
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birth_date, presence: true
  validates :birth_time, presence: true
  validates :birth_place, presence: true
  validates :photo, presence: true
end
