class Appointment < ApplicationRecord
  belongs_to :fixer
  belongs_to :user
  belongs_to :problem

  has_many_attached :photos
end
