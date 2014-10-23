class AddDescToArtWorks < ActiveRecord::Migration
  def change
    add_column :art_works, :description, :text
  end
end
