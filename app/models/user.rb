class User < ApplicationRecord
  # validates :first_name, presence: true
  # validates :last_name, presence: true

  # validates :email, presence: true, email: true,
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end