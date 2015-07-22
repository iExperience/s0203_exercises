class Animal < ActiveRecord::Base
	validates :species, presence: true
	validates :name, presence: true
end

