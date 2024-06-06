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
    new_ccr = udpate_ccr

    if @client.update(ccr: new_ccr)
      # alert user that ccr was updated
    else
      # alert user that ccr was not updated
    end
  end

  def udpate_ccr
    if @review.attendance
      if @review.punctuality >= 30
        @client.ccr += 0.5
      else
        @client.ccr += 0.25
      end
    else
      @client.ccr -= 1
    end
  end
end
