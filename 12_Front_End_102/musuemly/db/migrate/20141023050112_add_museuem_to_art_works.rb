class AddMuseuemToArtWorks < ActiveRecord::Migration
  def change
    add_reference :art_works, :musueum, index: true
  end
end
