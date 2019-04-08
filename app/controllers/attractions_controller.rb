class AttractionsController < ApplicationController 
    before_action :find_current_attraction, only: [:show, :edit, :update]

    def index 
        @attractions = Attraction.all 
    end 

    def new 
        @attraction = Attraction.new 
    end 

    def create
        @attraction =  Attraction.new(attraction_params)
        if current_user.admin 
            @attraction.save 
        end 
        redirect_to attraction_path(@attraction)
    end 

    def show 
    end 

    def edit 
    end 

    def update
        @attraction.update(attraction_params) if current_user.admin 
        redirect_to attraction_path(@attraction)
    end 

    def attraction_params 
        params.require(:attraction).permit(:name, :tickets, :min_height, :nausea_rating, :happiness_rating)
    end 

    def find_current_attraction 
        @attraction = Attraction.find_by(id: params[:id])
    end 
end 