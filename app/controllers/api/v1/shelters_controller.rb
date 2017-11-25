class Api::V1::SheltersController < ApplicationController

  def index
    @shelters = Shelter.all
    render json: @shelters
  end

  def create
    params["shelters"]["payload"]["shelter"].each do |place|
      Shelter.find_or_create_by(shelter_id: place["id"]["$t"]) do |newShelter|
        # newShelter.id = place["shelterId"]["$t"]
        newShelter.name = place["name"]["$t"]
        newShelter.city = place["city"]["$t"]
        newShelter.state = place["state"]["$t"]
        newShelter.zip_code = place["zip"]["$t"]
        newShelter.latitude = place["latitude"]["$t"]
        newShelter.longitude = place["longitude"]["$t"]
        newShelter.email = place["email"]["$t"]
      end
    end
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
