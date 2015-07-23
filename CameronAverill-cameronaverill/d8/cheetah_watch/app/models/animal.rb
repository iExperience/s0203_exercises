class Animal < ActiveRecord::Base
	validates :name, :species, presence: true
	validates :size, numericality: {greater_than_or_equal_to: 0, 
		only_integer: true}
		validates :diet, inclusion: {in: ["omnivore", "herbivore", "carnivore"]}

	belongs_to :shelter
end
