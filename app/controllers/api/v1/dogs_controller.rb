class Api::V1::DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render json: @dogs
  end

  def create
    params["dogs"]["payload"]["pet"].each do |dog|
      Dog.find_or_create_by(id: dog["id"]["$t"]) do |newDog|
        newDog.id = dog["id"]["$t"]
        newDog.shelter_id = dog["shelterId"]["$t"]
        newDog.name = dog["name"]["$t"]
        newDog.age = dog["age"]["$t"]
        newDog.mix = dog["mix"]["$t"]
        newDog.sex = dog["sex"]["$t"]
        newDog.size = dog["size"]["$t"]
        newDog.description = dog["description"]["$t"]
        newDog.photo = dog["media"]["photos"]["photo"][3]["$t"]
      end
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
