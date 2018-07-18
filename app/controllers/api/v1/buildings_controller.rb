class Api::V1::BuildingsController < ApplicationController

  def index
    @buildings = Building.all
    render json: @buildings, status: 200

  end

  def show
    find_building
    render json: @building, status: 200
  end

  def create
    @floor = Floor.find(params[:floor])
    @building = Building.find(params[:location])
    @keg = Keg.create(name:params[:name], style:params[:style], calories:params[:calories], abv:params[:abv])
    BeerLocation.create(floor_id:@floor.id, keg_id:@keg.id)
    render json: @building, status: 201
  end

  private
  def find_building
    @building = Building.find(params[:id])
  end

end
