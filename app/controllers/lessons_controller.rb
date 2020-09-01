class LessonsController < ApplicationController

    def index 
        lessons = Lesson.all 
        render json: lessons
    end 

    def create 
        @lesson = Lesson.create(lesson_params)
        # byebug
        if @lesson.valid? 
            render json: { review: LessonSerializer.new(@lesson) }, status: :created 
        else 
            render json: { error: 'Error' }, status: :not_acceptable
        end
    end

    def update 
        lesson = Lesson.find_by(id: params[:id])
        lesson.update(lesson_params) 
        if lesson.valid?
            render json: lesson 
        else 
            render json: { error: 'Please review your submission' }
        end 
    end 

    def destroy 
        lesson = Lesson.find_by(id: params[:id])
        lesson.destroy 
        render json: { message: 'lesson has been deleted'}
    end 

    private 
    def lesson_params 
        params.require(:lesson).permit(:id, :user_id, :instructor_id, :schedule_id, :date, :resort_name, :group_size, :group_skill, :group_age )
    end 

    
end
