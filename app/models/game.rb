class Game < ApplicationRecord
  has_many :games, through: :users_games
  has_many :user_games

  validates :first_name, presence: true
  validates :last_name, presence: true

  validates :email, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
