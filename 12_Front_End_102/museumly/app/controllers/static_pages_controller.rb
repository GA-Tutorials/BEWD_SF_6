class StaticPagesController < ApplicationController
  def home
  end

  def knock_around
  end

  def search
  end

  def results
  	@results = RapGeniusApi.get_artist_info(params[:artist])
  end
end
