class Speciality < ApplicationRecord
  belongs_to :fixer
  belongs_to :problem
  validates :problem_id, uniqueness: true
end
