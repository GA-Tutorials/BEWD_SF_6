# == Schema Information
#
# Table name: museums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  location   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Museum < ActiveRecord::Base
  has_many :art_works
  has_many :artists, through: :art_works
end
