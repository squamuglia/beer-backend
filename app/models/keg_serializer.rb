class KegSerializer < ActiveModel::Serializer
    has_many :beer_locations
    attributes :id, :name, :style, :calories, :abv
end