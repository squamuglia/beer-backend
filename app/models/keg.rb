class Keg < ApplicationRecord

  has_many :beer_locations
  has_many :floors, through: :beer_locations

end
