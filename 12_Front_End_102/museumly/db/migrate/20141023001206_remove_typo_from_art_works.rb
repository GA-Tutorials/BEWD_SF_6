class RemoveTypoFromArtWorks < ActiveRecord::Migration
  def change
    remove_column :art_works, :desciption, :text
  end
end
