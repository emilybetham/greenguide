class Location < ApplicationRecord
  validates :address, :name, :category, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  CATEGORIES = ["Recyclage", "Composte", "Vêtement", "Alimentation", "Marché", "Evenement"]
end
