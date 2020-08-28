class Instructor < ApplicationRecord
    has_many :instructor_resorts 
    has_many :resorts, through: :instructor_resorts

    # has_many :schedules 

    # has_many :requests 
    # has_many :lessons, through: :requests 

    # has_many :users, through: :lessons 
end
