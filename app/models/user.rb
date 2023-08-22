class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :vehicles
  has_many :rentals
  validates :first_name, presence: true, uniqueness: true
  validates :last_name, presence: true, uniqueness: true
  has_one_attached :avatar
end
