class Appointment < ApplicationRecord
  belongs_to :fixer, optional: true
  belongs_to :user, optional: true
  belongs_to :problem

  has_many_attached :photos
  monetize :amount_cents

end
