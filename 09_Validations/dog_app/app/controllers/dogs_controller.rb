class DogsController < ApplicationController
	def index
		@dogs = Dog.all
	end

	def new
		@dog = Dog.new
	end

	# def upvote
	# 	@post = Post.find(params[:id])
	# 	@post.votes += 1
	# 	@post.save
	# 	redirect_to blah_path
	# end

	# def downvote
	# end

	def create
		@dog = Dog.new(dog_params)
		if @dog.save
			flash[:msg] = "Successfully created new dog"
			redirect_to dogs_path
		else
			render :new
		end
		
	end

	def edit
		@dog = find_dog
	end

	def update
		@dog = find_dog
		if @dog.update(dog_params)
			flash[:msg] = "Successfully edited dog"
			redirect_to root_path
		else
			render :edit
		end
		
	end

	def destroy
		@dog = find_dog
		@dog.destroy
		flash[:msg] = "Successfully deleted dog"
		redirect_to something_path
	end

	def show
		@dog = find_dog
	end

	private
	def dog_params
		params.require(:dog).permit(:name, :breed, :age)
	end

	def find_dog
		Dog.find(params[:id])
	end
end
