class CitiesController < ApplicationController
    before_action :find_city_by_id, only: [:show, :update, :destroy]

    def index
        @cites = City.all 
        render json: @cites
    end

    def show
        # @city = City.find(params[:id])
        render json: @city
    end

    def create
        @city = City.create(city_params)
            # (name: params[:name],
            # population: params[:population],
            # state: params[:state])
        render json: @city
    end

    def update
        # @city = City.find(params[:id]) defined in a private method to avoid repeating code. 
        @city.update(city_params)
        render json: @city
    end

    def destroy
        @city.destroy
        redirect_to "index"
    end

    private

    def city_params
        params.require(:city).permit(:name, :population, :state)
    end
    
    def find_city_by_id
        @city = City.find(params[:id])
    end


end
