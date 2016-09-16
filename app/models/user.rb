class User < ApplicationRecord
  has_secure_password

  validates :email, :first_name, :last_name, presence: true
  # validates :password, :password_confirmation, presence: true, on: :create
  # validates :password, confirmation: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
