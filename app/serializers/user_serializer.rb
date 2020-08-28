class UserSerializer < ActiveModel::Serializer
    has_many :searches 
    has_many :requests 
    has_many :lessons 
    has_many :reviews 

end 