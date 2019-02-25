class Location < ApplicationRecord
  validates :address, :name, :category, presence: true
end
