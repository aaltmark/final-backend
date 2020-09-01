class LessonSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :instructor_id, :schedule_id, :date, :resort_name, :group_size, :group_skill, :group_age
end 