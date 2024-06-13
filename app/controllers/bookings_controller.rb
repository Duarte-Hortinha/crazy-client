class BookingsController < ApplicationController
  def index
    @restaurant = current_restaurant
    @bookings = Booking.where(restaurant: @restaurant).order(booking_start: :asc)
  end

  def without_reviews
    @bookings_without_reviews = Booking
      .left_outer_joins(:review)
      .where(reviews: { id: nil })
      .where(restaurant_id: current_restaurant.id).order(booking_start: :asc)
  end

  def show
    @booking = Booking.find(params[:id])
    @client = Client.find(@booking.client.id)
    @restaurant = Restaurant.find(@booking.restaurant.id)
  end

  def new
    @client = Client.find(params[:client_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @client = Client.find(params[:client_id])
    @booking.client = @client
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
      flash[:notice] = "Booking updated!"
      redirect_to booking_path(@booking.id)
    else
      flash[:notice] = "Something is wrong!"
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
