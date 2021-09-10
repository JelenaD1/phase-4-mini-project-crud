class SpicesController < ApplicationController

    def index
        spices = Spice.all 
        render json: spices
    end 

    def create
        spices = Spice.create(spice_params)
        render json: spices, status: 201
    end 

    def update
        spices = Spice.find(params[:id])
        spices.update(spice_params)
        render json: spices
    end 

    def destroy
        spices = Spice.find(params[:id])
        spices.destroy
        head :no_content

    end 


    private
    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end 
end
