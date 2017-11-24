class Api::V1::SheltersController < ApplicationController

  def index
    @shelters = Shelter.all
    render json: @shelters
  end

  def create
    byebug
    Shelter.create(shelter_params)
    console.log("Done")

  end

  def show
    @shelter = Shelter.find(params[:id])
    render json: @shelter
  end

  def update
    @shelter = Shelter.find(params[:id])
    @shelter.update(shelter_params)
  end

end
