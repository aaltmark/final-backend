class ResortsController < ApplicationController
    # skip_before_action :authorized, only: [:index, :show]


    def index 
        resorts = Resort.all 
        render json: resorts
    end 

    def show 
        resort = Resort.find_by(id: params[:id])
        render json: {resort: ResortSerializer.new(resort)} #, include: [:reviews]
    end 
end
