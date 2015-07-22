class Booking < ActiveRecord::Base
  validates :student, presence: true,
                    length: { minimum: 2 }
end
