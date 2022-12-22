class ApplicationController < ActionController::API
  include ActionController::Cookies

  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  before_action :authorize

  def index 
      render json: {message: "Codearn API"}
  end

  private

  def render_unprocessable_entity_response(invalid)
      render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
  end

  def render_not_found_response(exception)
      render json: {error: exception.message}, status: :not_found
  end

  def authorize 
    @current_patient = Patient.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
    @current_doctor = Doctor.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
    render json: {error: ["Not authorized"]}, status: :unauthorized unless @current_patient || @current_doctor
  end

end
