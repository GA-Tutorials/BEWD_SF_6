# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  bio        :string(255)
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Artist < ActiveRecord::Base
  validates_presence_of :name, :image, :bio
  validates_uniqueness_of :name
  has_many :art_works
  belongs_to :musuem   
end
