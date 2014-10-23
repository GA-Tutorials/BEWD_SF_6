# == Schema Information
#
# Table name: art_works
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  artist_id   :integer
#  image       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  description :text
#

class ArtWork < ActiveRecord::Base
  belongs_to :artist

  def self.get_song_info
  end
  

end
