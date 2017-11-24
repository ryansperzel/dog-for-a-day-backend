class Api::V1::DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render json: @dogs
  end

  def create
    params["dogs"]["payload"]["pet"].each do |dog|
      Dog.create(pet_id: dog["id"]["$t"], shelter_id: dog["shelterId"]["$t"], name: dog["name"]["$t"], age: dog["age"]["$t"], mix: dog["mix"]["$t"], sex: dog["sex"]["$t"], size: dog["size"]["$t"])
      # description: dog["description"]["$t"], photo: ["media"]["photos"]["photo"][3]["$t"]
    end
  end

  def show
    @dog = Dog.find(params[:id])
    render json: @dog
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
  end


  private

  def dog_params
    params.require(:dog).permit(:pet_id, :shelter_id, :name, :age, :mix, :sex, :size, :description, :photo)
  end

end
