class ResortSerializer < ActiveModel::Serializer 
    attributes :id, :name, :state, :instructors 

    # has_many :instructors, through: :instructor_resorts

    def instructors 
        self.object.instructors.map do |instructor|
            {
                instructor_id: instructor.id,
                instructor_name: instructor.name, 
                instructor_date_of_birth: instructor.date_of_birth, 
                instructor_specialty: instructor.specialty, 
                instructor_years_experience: instructor.years_experience,
                instructor_certification: instructor.certification
            }
        end
    end 

    # def instructors 
    #     self.object.resorts.map do |resort| 
    #         {
    #             resort_id: resort.id, 
    #             resort_name: resort.name,
    #             resort_state: resort.state
    #         }
    #     end
    # end 




    # has_many :schedules 

    # has_many :requests 

    # has_many :users, through: :lessons 

end 