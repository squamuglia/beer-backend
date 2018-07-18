class BuildingSerializer < ActiveModel::Serializer
    has_many :floors, through: :beer_locations
    attributes :id, :street, :city, :zip
  end