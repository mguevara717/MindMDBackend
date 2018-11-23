class Api::V1::ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render json: @reviews, status: :accepted
  end

  def create
    @review = Review.create(review_params)
    if @review.save
      render json: @review, status: :created
    else
      render json: {errors: @review.errors.full_messages}, status: :error
  end
end

  def show
    @review = Review.find(params[:id])
    render json: @review, status: :found_review
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)

    if @review.save
      render json: @review, status: :updated
    else
      render json: {errors: @review.errors.full_messages}, status: :update_error
  end
end

  def destroy
    @review.destroy
    render json: @review, status: :deleted
  end

  private

  def review_params
    params.require(:review).permit(:content, :user_id)
  end
  #need to add doctor_id params later to this method
end
