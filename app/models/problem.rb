class Problem < ApplicationRecord
  belongs_to :category
  has_many :specialities
  has_many :appointments
end
