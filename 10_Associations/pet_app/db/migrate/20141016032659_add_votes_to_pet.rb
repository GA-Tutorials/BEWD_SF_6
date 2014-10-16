class AddVotesToPet < ActiveRecord::Migration
  def change
  	add_column :pets, :votes, :integer
  end
end
