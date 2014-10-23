module RapGeniusApi

  def self.get_artist_info(name)
    search = RapGenius.search_by_artist(name)
    artist = search.first.artist
  end

  def self.get_songs(name)  
    search = RapGenius.search_by_artist(name)
    songs = search.map(&:id)
    songs.each do |song_id|
      RapGenius::Song.find(song_id)
    end
  end

  def self.get_song_info(song_id)
    #find level of data required 
    #title, audio_url etc., 
  end
end

#get artist info 
#get song_ids for artist
#get get_song_info
#get lyrics or get media (url to audio)