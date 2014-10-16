class PetsController < ApplicationController
	def index
		@person = Person.find(params[:person_id])
		@pets = @person.pets.all
	end

	def upVote
		@pet = Pet.find(params[:id])
		@pet.votes += 1
		@pet.save
		redirect_to person_pets_path(@pet.person)
	end

	def new
		@person = Person.find(params[:person_id])
		@pet = Pet.new
	end

	def create
		@person = Person.find(params[:person_id])
		pet = @person.pets.create(pet_params)
		pet.votes = 0
		pet.save
		redirect_to person_pets_path(@person)
	end

	def newStray
		@pet = Pet.new
	end

	def createStray
		@pet = Pet.create(pet_params)
		redirect_to root_path
	end

	private
	def pet_params
		params.require(:pet).permit(:name, :species, :age)
	end
end
