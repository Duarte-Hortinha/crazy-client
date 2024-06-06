class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def edit
    @restaurant = Restaurant.find(current_restaurant)
  end

  def update
    @restaurant = Restaurant.find(current_restaurant)

    if @restaurant.update(restaurant_params)
      flash[:notice] = "Restaurant info succesfully updated!"
      redirect_to root_path
    else
      render action: :edit, status: :unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:ccr_acceptance, :email, :name, :capacity, :photo)
  end
end
