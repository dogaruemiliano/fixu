class Message < ApplicationRecord
  belongs_to :appointment
  belongs_to :user

  validates :content, presence: true
end
