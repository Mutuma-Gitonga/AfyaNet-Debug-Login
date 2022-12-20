class PatientsController < ApplicationController

    def index
        render json: Patient.all, status: :ok
      end
end
