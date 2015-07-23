class Place < ActiveRecord::Base
	validates :name, :description, :highlight, :distance, presence: true
	validates :distance, numericality: {greater_than_or_equal_to: 0, 
		only_integer: true}
end
