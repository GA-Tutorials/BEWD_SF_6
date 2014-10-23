class CreateMusuems < ActiveRecord::Migration
  def change
    create_table :musuems do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
