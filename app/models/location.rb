class Location < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :address, :name, :category, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  CATEGORIES = ["toutes catégories", "compost", "événement", "jardin partagé", "marché", "recyclage", "vêtement"]
end
