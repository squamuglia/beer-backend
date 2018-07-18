class BeerLocationSerializer < ActiveModel::Serializer
    belongs_to :keg
    belongs_to :floor
end