class Review < ApplicationRecord
  belongs_to :appointment
  validates :rating, presence: true, numericality: true
  validates :content, presence: true
end
