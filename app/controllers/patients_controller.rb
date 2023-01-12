class PatientsController < ApplicationController
  wrap_parameters format: []
  skip_before_action :patient_authorize, only: :create
  skip_before_action :doctor_authorize

  # Create a patient on signup 
  def create 
    @patient = Patient.create!(patient_params)
    render json: @patient, status: :created
  end

  # Show an appropriate profile of a currently logged in patient
  def show 
    render json: @patient, status: :ok
  end

  # Update currently logged patient's attributes
  def update 
    @patient.update!(patient_params)
    render json: @patient, status: :ok
  end

  # Delete currently logged in patient profile altogether
  def destory 
    @patient.destroy
    render json: { message: "Patient profile deleted!" }, status: :ok
  end

  private 
  
  # Strong params method to allow specific attributes to be set via mass assignment, 
  # ... thus prevent potential unauthorized/malicious attribute value setting 
  def patient_params 
    params.permit(:first_name, :last_name, :date_of_birth, :email, :password, :password_confirmation, :phone_number, :location, :remember_me, :profile_picture)
  end

end
