class Review < ApplicationRecord
  belongs_to :appointment
  has_one :user, through: :appointment
  has_one :fixer, through: :appointment
  validates :rating, presence: true, numericality: true
  validates :content, presence: true
end
