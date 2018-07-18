class BeerLocationsController < ApplicationController

  def index
    @beerLocations = BeerLocation.all
    render json: @beerLocations, status: 200
  end

  def show
    find_beerLocation
    render json: @beerLocation, status: 200
  end

  def new
    @beerLocation = BeerLocation.new
  end

  def edit
    find_beerLocation
  end

  def create
    beerLocation = BeerLocation.create(params[:keg_id, :floor, :building_id])
    render json: beerLocation, status: 201
  end

  def update
    find_keg
  end

  def destroy
    find_keg.destroy
  end

  private

  def find_keg
    @keg = Keg.find(params[:id])
  end

end
