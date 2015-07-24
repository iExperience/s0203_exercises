class Animal < ActiveRecord::Base
	validates :name, :species, :color, :age, presence: true 
	validates :size, numericality: { greater_than_or_equal_to: 0, only_integers: true }
	validates :diet, inclusion: { in: ["Omnivore", "Carnivore", "Herbivore"]}

	belongs_to :shelter

end
