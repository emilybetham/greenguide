class Location < ApplicationRecord
  has_many :reviews
  validates :address, :name, :category, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  CATEGORIES = ["alimentation", "composte", "événement", "marché", "recyclage", "vêtement"]
end
