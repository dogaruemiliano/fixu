class Fixer < ApplicationRecord
  belongs_to :user
  has_many :specialities, dependent: :destroy
  has_many :appointments, dependent: :destroy
  has_many :reviews, through: :appointments
  has_many :problems, through: :specialities

  validates :start_time, presence: true
  validates :end_time, presence: true
  monetize :price_cents

  def rating_avg
    ratings = []
    reviews.each do |review|
      ratings << review.rating
    end
    return (ratings.reduce(:+).to_f / ratings.size).round(1)
  end
end
