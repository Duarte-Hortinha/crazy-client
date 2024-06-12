class ReviewsController < ApplicationController

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      set_client_ccr
      redirect_to bookings_path  # correct, goes to show page but @meme has to yield ID
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:punctuality, :comment, :attendance) # added photo because of cloudinary
  end

  def set_client_ccr
    @client = Client.find(@booking.client.id)

    # here comes the logic how to calculate the CCR , could be in another method
    new_ccr = update_ccr

    if @client.update(ccr: new_ccr)
      # alert user that ccr was updated
    else
      # alert user that ccr was not updated
    end
  end

  def update_ccr
    if @review.attendance
      if @review.punctuality >= 30
        new_ccr = @client.ccr*(((120.0 - @review.punctuality)/120.0)*0.95)
      else
        new_ccr = @client.ccr*0.98 # 15 minute delay or less
      end
    else
      new_ccr = @client.ccr*0.9
    end
    new_ccr.round(1)
  end
end
