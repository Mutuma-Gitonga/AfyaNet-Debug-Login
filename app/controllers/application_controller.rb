class ApplicationController < ActionController::API
  include ActionController::Cookies

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  before_action :patient_authorize
  before_action :doctor_authorize

  def index 
      render json: {message: "AfyaNet API"}
  end

  def encode_token(payload)
    JWT.encode(payload, 'my_s3cr3t')
  end

  def auth_header
    # { Authorization: 'Bearer <token' }
    request.headers['Authorization']
  end

  def decoded_token
      if auth_header
          token = auth_header.split(' ')[1]
          begin
              JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
          rescue
              nil
          end
      end

  end

  def current_doctor
      if decoded_token
          doctor_id = decoded_token[0]['doctor_id']
          @doctor = Doctor.find_by(id: doctor_id)
      end
  end

  def logged_in?
      !!current_doctor
  end

  def doctor_authorize
      if logged_in?
          true
      else
          render json: { message: 'Please log in' }, status: :unauthorized
      end
  end

  private

  def render_unprocessable_entity_response(invalid)
      render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
  end

  def render_not_found_response(exception)
      render json: {error: exception.message}, status: :not_found
  end

  def patient_authorize
    @current_patient = Patient.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
    render json: {error: ["Not authorized"]}, status: :unauthorized unless @current_patient
  end

  # def doctor_authorize
  #   @current_doctor = Doctor.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  #   render json: {error: ["Not authorized"]}, status: :unauthorized unless @current_doctor
  # end

end
