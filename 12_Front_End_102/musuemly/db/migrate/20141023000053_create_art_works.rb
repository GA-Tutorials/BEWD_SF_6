class CreateArtWorks < ActiveRecord::Migration
  def change
    create_table :art_works do |t|
      t.string :name
      t.references :artist, index: true
      t.string :image
      t.text :desciption

      t.timestamps
    end
  end
end
