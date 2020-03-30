class Speciality < ApplicationRecord
  belongs_to :fixer
  belongs_to :problem
  validates :problem, presence: true, uniqueness: true
end
