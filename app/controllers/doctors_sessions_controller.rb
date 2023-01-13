class DoctorsSessionsController < ApplicationController

  wrap_parameters format: []
  skip_before_action :doctor_authorize, only: [:create, :update]
  skip_before_action :patient_authorize
  
  require 'pry'

  def create
    @doctor = Doctor.find_by(email: params[:email])

    if @doctor && @doctor.authenticate(params[:password])
        # Update last_login with current time (marking logging in time)   
        # last_login = "#{Time.now.strftime "%Y%m%d%H%M%S"}"
        # @doctor.last_login = "#{Time.now.strftime "%Y%m%d%H%M%S"}"
        @doctor.update(last_login: "#{Time.now.strftime "%Y%m%d%H%M%S"}")
        # .update(last_login: Time.current)
        # last_login_after = @doctor.last_login
        # Create token payload includes doctor id and last_login values
        payload = {doctor_id: @doctor.id, last_login: @doctor.last_login}
        # Encode the token with JWT using encode_token method in application controller
        payload_value = payload
        # binding.pry
        token = encode_token(payload)
        #If successful, return the doctor's details including a unique JWT token for every login (thanks to last_login field)
        render json: DoctorSerializer.new(@doctor).as_json.merge(jwt: token), status: :accepted
    else
        render json: { error: 'Invalid email or password!' }, status: :unauthorized
    end

  end 

  private 
    
  def doctor_params
    params.permit(:email, :password)
  end

end