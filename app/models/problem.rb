class Problem < ApplicationRecord
  belongs_to :category
  has_many :specialties

end
