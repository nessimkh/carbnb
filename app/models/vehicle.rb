class Vehicle < ApplicationRecord
  has_many :rentals
  has_one_attached :photo
end
