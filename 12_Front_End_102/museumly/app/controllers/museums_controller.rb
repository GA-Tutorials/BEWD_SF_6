class MuseumsController < ApplicationController
  def index
    @museums = Museum.all
  end

  def show
    @museum = find_museum
    @art_works = @museum.art_works
  end

  def new
    @museum = Museum.new
  end

  def create
    @museum = Museum.new(museum_params)
    if @museum.save
      redirect_to museums_path
    else
      render 'new'
    end
  end


  def edit
  end

  private

  def find_museum
    Museum.find(params[:id])
  end

  def museum_params
    params.require(:museum).permit(:location,:name)
  end


end
