class DoctorsSessionsController < ApplicationController

  wrap_parameters format: []
  skip_before_action :doctor_authorize, only: :create
  skip_before_action :patient_authorize
  
  def create
    @doctor = Doctor.find_by(email: params[:email])
    if @doctor && @doctor.authenticate(params[:password])
        token = encode_token(doctor_id: @doctor.id)
        render json: DoctorSerializer.new(@doctor).as_json.merge(jwt: token), status: :accepted
    else
        render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end 

  private 
    
  def doctor_params
    params.permit(:email, :password)
  end

end