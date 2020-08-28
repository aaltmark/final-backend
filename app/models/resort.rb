class Resort < ApplicationRecord
    has_many :instructor_resorts 
    has_many :instructors, through: :instructor_resorts
end
