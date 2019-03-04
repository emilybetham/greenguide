class ReviewsController < ApplicationController

  def index
  end

  def new
    @location = Location.find(params[:location_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @location = Location.find(params[:location_id])
    @review.location = @location
    @review.user = current_user
    authorize @review
    @review.save
    respond_to do |format|
      format.html { redirect_to locations_path }
      format.js
    end

  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
