class SpecialtiesController < ApplicationController 

    def index
        @specialties = Specialty.all
        render json: @specialties, status: :ok
    end

    def show
        @specialty = Specialty.find(params[:id])
        render json: @specialty, status: :ok
    end

    def new
        @specialty = Specialty.create!(specialty_params)
        render json: @specialty, status: :created
    end

    def update
        @specialty = Specialty.find(params[:id])
        @specialty.update!(specialty_params)
        render json: @specialty, status: :ok
    end

    def destroy
        @specialty = Specialty.find(params[:id])
        @specialty.destroy
        render json: @specialty, status: :ok
    end

    private

    def specialty_params
        params.permit(:name)
    end
    
end

