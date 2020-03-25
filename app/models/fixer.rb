class Fixer < ApplicationRecord
  belongs_to :user
  has_many :specialties

  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :unit_price, presence: true, numericality: true
end
