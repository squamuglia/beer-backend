class Building < ApplicationRecord
  has_many :floors
  has_many :beer_locations, through: :floors
end
