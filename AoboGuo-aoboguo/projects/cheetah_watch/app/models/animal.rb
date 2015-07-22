class Animal < ActiveRecord::Base
	validates :name, :species, :color, :region, presence: true
	validates :size, :age, numericality: {greater_than_or_equal_to: 0} #numericality
	validates :diet, inclusion: { in: ["omnivore", "carnivore", "herbivore"] }
		#this requires that the diet be one of the three things
		#maybe we would want this to be a drop-down option on our form
end
