class ApplicationController < ActionController::API
    include ActionController::Cookies
  
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  
    before_action :patient_authorize
    before_action :doctor_authorize
  
    require 'pry'
    def index 
        render json: {message: "AfyaNet API"}
    end
  
    def encode_token(payload)
      JWT.encode(payload, 'my_s3cr3t', 'HS256')
    end

    # def encode_token(payload)
    #     payload[:exp] = 24.hours.from_now.to_i
    #     JWT.encode(payload, Rails.application.secrets.secret_key_base)
    # end
      
  
    def auth_header
      # { Authorization: 'Bearer <token' }
      request.headers['Authorization']
    end
  
    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            # binding.pry
            begin
                JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
            rescue
                nil
            end
        end
    end
  
    def current_doctor
        if decoded_token
            begin
                # decoded_token_view = decoded_token
                # binding.pry
                doctor_id = decoded_token[0]['doctor_id']
                @doctor = Doctor.find_by(id: doctor_id)

                debug = @doctor.last_login
                binding.pry

                if @doctor.last_login != decoded_token[0]['last_login']
                    raise Exception
                end

                return @doctor

            rescue
                render json: { error: 'Invalid token' }, status: :unauthorized
                return false
            end
        end
    end
  
    def doctor_logged_in?
      !!current_doctor
    end
  
    def doctor_authorize
      if doctor_logged_in?
          true
      else
          render json: { message: 'Please log in' }, status: :unauthorized
      end
    end
  
    def current_patient
      if decoded_token
          patient_id = decoded_token[0]['patient_id']
          @patient = Patient.find_by(id: patient_id)
      end
    end
  
    def patient_logged_in?
      !!current_patient
    end
  
    def patient_authorize
      if patient_logged_in?
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
  
  end
  