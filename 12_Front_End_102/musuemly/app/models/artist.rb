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
  
  #validations 
  validates_presence_of :name, :bio
  validates_uniqueness_of :name

  #associations
  has_many :art_works

  
end
