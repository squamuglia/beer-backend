class BeerLocation < ApplicationRecord
  belongs_to :floor
  belongs_to :keg
end
