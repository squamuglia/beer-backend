class FloorSerializer < ActiveModel::Serializer
    has_many :beer_locations
    has_many :kegs, through: :beer_locations
    attributes :number, :kegs
end