class Animal < ActiveRecord::Base
	validates :name, :species, :color, :region, presence: true
	validates :age, :size, numericality: {greater_than_or_equal_to: 0, 
		only_integer: true } 
	validates :diet, inclusion: { in: ["omnivore", "carnivore", 
		"herbivore"] }
end
