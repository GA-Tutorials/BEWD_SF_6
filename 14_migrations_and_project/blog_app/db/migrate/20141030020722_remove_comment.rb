class RemoveComment < ActiveRecord::Migration
  def change
  	drop_table :comments
  end
end
