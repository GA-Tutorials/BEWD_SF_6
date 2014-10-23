class AddMuseumToArtWorks < ActiveRecord::Migration
  def change
    add_reference :art_works, :museum, index: true
  end
end
