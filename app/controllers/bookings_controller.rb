class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(restaurant: current_restaurant)
  end

  def new
    @client = Client.find(params[:client_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.client = Client.find(params[:client_id])
    @booking.restaurant = current_restaurant
    if @booking.save
      redirect_to bookings_path  # correct, goes to show page but @meme has to yield ID
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_start, :booking_end, :party_count, :comment) # added photo because of cloudinary
  end
end
