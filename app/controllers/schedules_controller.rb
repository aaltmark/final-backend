class SchedulesController < ApplicationController
    # skip_before_action :authorized, only: [:show, :update]

    def index 
        schedules = Schedule.all 
        render json: schedules
    end 

    def show 
        schedule = Schedule.find_by(id: params[:id])
        render json: schedule #, include: [:reviews]
    end 
    
    def update 
        schedule = Schedule.find_by(id: params[:id])
        schedule.update(schedule_params) 
        if schedule.valid?
            render json: schedule 
        else 
            render json: { error: 'Please review your submission' }
        end 
    end 

    private
    def schedule_params
        params.require(:schedule).permit(:id, :instructor_id, :date, :available)
    end
end
