class Comment < ActiveRecord::Base
	belongs_to :place
	validates :commenter, :text, presence: true
end
