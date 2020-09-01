class User < ApplicationRecord
    # has_many :reviews 

    # has_many :searches 

    # has_many :requests 

    has_many :lessons
    has_many :instructors, through: :lessons 

    has_secure_password 
end
