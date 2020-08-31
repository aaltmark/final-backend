class InstructorSerializer < ActiveModel::Serializer 
    attributes :id, :name, :phone, :date_of_birth, :email, :specialty, :group_size, :group_age, :group_skill, :image, :resorts, :years_experience, :hometown, :bio, :certification, :schedules

    def resorts 
        self.object.resorts.map do |resort| 
            {
                resort_id: resort.id, 
                resort_name: resort.name,
                resort_state: resort.state
            }
        end
    end 

  

    def schedules 
        self.object.schedules.map do |schedule|
            {
                schedule_id: schedule.id,
                schedule_date: schedule.date,
                schedule_available: schedule.available, 
            }
        end 
    end




    # has_many :schedules 

    # has_many :requests 

    # has_many :users, through: :lessons 

end 