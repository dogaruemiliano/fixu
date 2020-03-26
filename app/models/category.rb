class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :problems, dependent: :destroy

  has_one_attached :photo
end
