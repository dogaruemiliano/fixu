class Speciality < ApplicationRecord
  belongs_to :fixer
  belongs_to :problem
  validates_uniqueness_of :problem_id, :scope => [:fixer_id]
end
