# == Schema Information
#
# Table name: musuems
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  location   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Musuem < ActiveRecord::Base
  has_many :artists
end
