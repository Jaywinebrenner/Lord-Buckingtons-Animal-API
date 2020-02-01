class AnimalsController < ApplicationController

  def index
    if
      breed = params[:breed]
      @animals = Animal.breed_search(breed)
      json_response(@animals)

    elsif
      name = params[:name]
      @animals = Animal.name_search(name)
      json_response(@animals)

    else
      @animals = Animal.all
      json_response(@animals)
    end
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal)

  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update!(animal_params)
      render status: 200, json: {
        message: "You updated up the animal, friend!"
      }
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.destroy!
      render status: 200, json: {
        message: "This animal has been destroyed. Murderer."
      }
    end
  end

  private

  def animal_params
    params.permit(:name, :breed, :legs)
  end
end
