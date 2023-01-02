class ReviewsController < ApplicationController

    def create
        @patient = Patient.find(params[:patient_id])
        @review = @patient.create!(review_params)
        render json: @review, status: :created
    end

    def index
        @reviews = Review.all
        render json: @reviews, status: :ok
    end

    def show
        @review = Review.find(params[:id])
        render json: @review, status: :ok
    end

    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        head :no_content
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        head :no_content
    end

    private

    def review_params
        params.permit(:rating, :doctor_id, :patient_id)
    end
    


end
