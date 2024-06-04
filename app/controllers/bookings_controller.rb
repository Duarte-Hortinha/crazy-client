class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(restaurant: current_user)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking.client = Client.find(params[:client_id])
    @booking = Booking.new(booking_params)
    @booking.restaurant = current_user
    if @booking.save
      redirect_to ...  # correct, goes to show page but @meme has to yield ID
    else
      render ...
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_start, :booking_end, :party_count, :comment) # added photo because of cloudinary
  end
end
