class CampersController < ApplicationController

    def index
        @campers = Camper.all
    end

    def show
        @camper = Camper.find(params[:id])
        @activities = CamperActivity.all
        # if CamperActivity camper_id == @camper.id
        # then put list of all CamperActivities
        # camper_activity = CamperActivity.each do |camper_activity|
        #     byebug
        #     if camper_activity
        #     end
        # end 
    end

    private

    def activity_params(*arg)
        params.require(:camper).permit(*arg)
    end

end
