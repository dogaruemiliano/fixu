class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, format: { with: /.+@.+\..+/ }
  validates :first_name, presence: true, length: { minimum: 2, maximum: 20 }
  validates :last_name, presence: true, length: { minimum: 2, maximum: 20 }
  validates :address, presence: true, length: {minimum: 7, maximum: 40}
  validates :phone_number, presence: true, format: { with: /\d+/}

  has_one :fixer, dependent: :destroy

  def full_name
    return "#{first_name} #{last_name}"
  end

  # def is_fixer?
  #   return Fixer.find(self.id)
  # end
end
