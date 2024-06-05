class ReviewsController < ApplicationController

  def index
    @reviews = Review.all # but then it would be for our restaurant only...
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    if @review.save
      redirect_to bookings_path  # correct, goes to show page but @meme has to yield ID
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  private

  def review_params
    params.require(:review).permit(:punctuality, :comment, :attendance) # added photo because of cloudinary
  end
end
