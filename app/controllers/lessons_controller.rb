class LessonsController < ApplicationController

    def index 
        lessons = Lesson.all 
        render json: {lesson: LessonSerializer.new(lesson)}
    end 

    def create 
        @lesson = Lesson.create(lesson_params)
        # byebug
        if @lesson.valid? 
            render json: { review: Lessonerializer.new(@lesson) }, status: :created 
        else 
            render json: { error: 'Error' }, status: :not_acceptable
        end
    end

    
end
