class SpecialtiesController < ApplicationController

  def index 
    @specialties = Specialty.all 
    render json: @specialties, status: :ok
  end
end
