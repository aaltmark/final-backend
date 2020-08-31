class Lesson < ApplicationRecord
  belongs_to :instructor 
  belongs_to :user
  belongs_to :resort

end
