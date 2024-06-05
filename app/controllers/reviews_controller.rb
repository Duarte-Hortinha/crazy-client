class ReviewsController < ApplicationController

  def index
    # @reviews = Review.all # but then it would be for our restaurant only...
    @booking = Booking.find(params[:booking_id])
    @reviews = @booking.review # wrong
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

end
