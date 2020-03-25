class Problem < ApplicationRecord
  belongs_to :category
  has_many :specialties
  has_many :appointments

end
