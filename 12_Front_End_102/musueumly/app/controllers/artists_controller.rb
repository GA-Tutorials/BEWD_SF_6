class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = find_artist
    @art_works = find_artist.art_works
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artists_path
    else
      render 'new'
    end
  end

  def edit
    @artist = find_artist
  end

  def update
    @artist = find_artist
    if @artist.update(artist_params)
      redirect_to artists_path
    else
      render 'edit'
    end
  end

  def destroy
    @artist = find_artist
    @artist.destroy
    redirect_to artists_path 
  end

  private

  def find_artist
    Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :bio, :image)
  end

end
