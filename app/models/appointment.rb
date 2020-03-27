class Appointment < ApplicationRecord
  belongs_to :fixer, optional: true
  belongs_to :user
  belongs_to :problem

  has_many_attached :photos
end
