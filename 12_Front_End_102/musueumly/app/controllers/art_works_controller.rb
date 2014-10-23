class ArtWorksController < ApplicationController
  def index
    @art_works = ArtWork.all
  end

  def show
    @art_work = find_art_work
  end

  def new 
    @art_work = ArtWork.new
  end

  def create
    @art_work = ArtWork.new(art_work_params)
    if @art_work.save
      redirect_to art_works_path
    else
      render 'new'
    end
  end

  def edit
    @art_work = find_art_work
  end

  def update
    @art_work = find_art_work
    if @art_work.update(art_work_params)
      redirect_to art_works_path
    else
      render 'edit'
    end
  end

  def destroy
    @art_work = find_art_work
    @art_work.destroy
    redirect_to art_works_path
  end

  private 
  def find_art_work
    ArtWork.find(params[:id])
  end

  def art_work_params
    params.require(:art_work).permit(:name,:artist_id,:image, :description)
  end



end
