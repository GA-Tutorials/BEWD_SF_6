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
#  museum_id   :integer
#

class ArtWork < ActiveRecord::Base
  belongs_to :artist
  belongs_to :museum


end
