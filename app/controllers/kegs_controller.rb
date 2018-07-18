class KegsController < ApplicationController
  before_action :find_keg, only: [:update, :destroy]

  def index
    @kegs = Keg.all
    render json: @kegs, status: 200
  end

  def create
    keg = Keg.create(keg_params)
    render json: keg, status: 201
  end

  def update
    find_keg
    render json: @keg, status: 200
  end

  def destroy
    find_keg.destroy
  end

  def show
    # find_keg
    render json: @keg, status: 200
  end


  private

  def find_keg
    @keg = Keg.find(params[:id])
  end

  def keg_params
    params.permit(:name, :style, :calories, :abv, :floor, :building_id)
  end
end
