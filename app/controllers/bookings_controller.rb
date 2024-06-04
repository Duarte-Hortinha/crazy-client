class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(restaurant: current_restaurant)
  end

  def show
    @booking = Booking.find(params[id])
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

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      flash[:success] = "Booking updated!"
      redirect_to bookings_path
    else
      render action: :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_start, :party_count, :comment) # added photo because of cloudinary
  end
end
