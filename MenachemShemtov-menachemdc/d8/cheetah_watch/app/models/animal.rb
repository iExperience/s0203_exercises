class Animal < ActiveRecord::Base
	validates :name, :species, :region, :color, presence: true
	validates :diet, inclusion: {in: ["omnivore", "carnivore", "herbivore"]}
	validates :size, numericality: {greater_than_or_equal_to: 0, only_integer: true}
end
