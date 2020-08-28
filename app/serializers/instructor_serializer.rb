class InstructorSerializer < ActiveModel::Serializer 
    attributes :name, :phone, :date_of_birth, :email, :specialty, :group_size, :group_age, :group_skill, :image, :resorts

    def resorts 
        self.object.resorts.map do |resort| 
            {
                resort_id: resort.id, 
                resort_name: resort.name,
                resort_state: resort.state
            }
        end
    end 




    # has_many :schedules 

    # has_many :requests 

    # has_many :users, through: :lessons 

end 