class Appointment < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_changes_to_address

  belongs_to :fixer, optional: true
  belongs_to :user, optional: true
  belongs_to :problem

  has_many_attached :photos
  monetize :amount_cents

end
