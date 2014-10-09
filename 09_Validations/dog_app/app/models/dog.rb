class Dog < ActiveRecord::Base
	validates :name, :age, :breed, presence: true
	validates :name, length: { minimum: 5 }
	validates :age, numericality: { only_integer: true }
	validates :name, uniqueness: true
end
