class RemoveMuseuemFromArtWorks < ActiveRecord::Migration
  def change
    remove_reference :art_works, :musueum, index: true
  end
end
