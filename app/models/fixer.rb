class Fixer < ApplicationRecord
  belongs_to :user
  has_many :specialities, dependent: :destroy
  has_many :appointments, dependent: :destroy
  has_many :problems, through: :specialities

  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :unit_price, presence: true, numericality: true
end
