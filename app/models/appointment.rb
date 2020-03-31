class Appointment < ApplicationRecord
  belongs_to :fixer, optional: true
  belongs_to :user, optional: true
  belongs_to :problem

  has_many_attached :photos
  has_many :messages, dependent: :destroy

  monetize :amount_cents

end
