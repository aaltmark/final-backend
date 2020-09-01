class Lesson < ApplicationRecord
  belongs_to :instructor 
  belongs_to :user

  def find_schedule 
    Schedule.find_by(date: self.date, instructor_id: self.instructor_id)
  end 

end
