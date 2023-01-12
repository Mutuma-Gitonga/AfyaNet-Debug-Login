class DoctorsSessionsController < ApplicationController

  wrap_parameters format: []
  skip_before_action :doctor_authorize, only: :create
  skip_before_action :patient_authorize
  
  def create
    @doctor = Doctor.find_by(email: doctor_params[:email])
    if @doctor && @doctor.authenticate(doctor_params[:password])
        token = encode_token(doctor_id: @doctor.id)
        render json: { doctor: DoctorSerializer.new(@doctor), jwt: token }, status: :accepted
    else
        render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end 

  private 
    
  def doctor_params
    params.require(:doctor).permit(:email, :password)
  end

end