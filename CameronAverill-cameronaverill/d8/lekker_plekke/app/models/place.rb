class Place < ActiveRecord::Base
	validates :name, :address, :rating, presence: true
	validates :rating, numericality: {only_integer: true, less_than_or_equal_to: 5, greater_than_or_equal_to: 1}
	has_many :comments
end
