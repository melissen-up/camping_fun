class ActivitiesController < ApplicationController

    def index
        @activities = Activity.all
    end

    def show
        @activity = Activity.find(params[:id])
    end

    private

    def activity_params(*arg)
        params.require(:activity).permit(*arg)
    end
    
end
