class Location < ApplicationRecord
  has_many :person_locations
  has_many :locations, through: :person_locations
end
