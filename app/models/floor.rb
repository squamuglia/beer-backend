class Floor < ApplicationRecord

  has_many :beer_locations
  has_many :kegs, through: :beer_locations

end
