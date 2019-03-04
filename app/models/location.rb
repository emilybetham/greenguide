class Location < ApplicationRecord
  validates :address, :name, :category, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  CATEGORIES = ["toutes catégories", "alimentation", "composte", "événement", "marché", "recyclage", "vêtement"]
end
