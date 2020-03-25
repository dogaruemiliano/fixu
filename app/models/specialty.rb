class Specialty < ApplicationRecord
  belongs_to :problem
  belongs_to :fixer
end
