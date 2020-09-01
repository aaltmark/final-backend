class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :phone, :date_of_birth, :email
    # has_many :searches 
    # has_many :requests 
    has_many :lessons 
    # has_many :reviews 

end 