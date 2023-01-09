class DoctorsSessionsController < ApplicationController

  wrap_parameters format: []
  skip_before_action :doctor_authorize, only: :create
  skip_before_action :patient_authorize



  
  def create
    @doctor = Doctor.find_by(email: params[:email])

    if @doctor && @doctor.authenticate(params[:password])
      if (params[:remember_me])
        cookies.permanent[:auth_token] = @doctor.auth_token
      else
        cookies[:auth_token] = @doctor.auth_token
      end
        render json: @doctor, status: :created
    else
      render json: {errors: ["Invalid email or password"]}, status: :unprocessable_entity
    end

  end

end
