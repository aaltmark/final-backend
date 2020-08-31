class SchedulesController < ApplicationController
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
        params.require(:schedule).permit(:instructor_id, :date, :available)
    end
end
