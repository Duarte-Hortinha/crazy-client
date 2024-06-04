class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to new_client_booking_path(@client) # correct, goes to show page but @meme has to yield ID
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @restaurant = current_restaurant # probably here it is needed (see update reference)
    @client = Client.find(params[:id]) # getting the client ID, is this the way? - params[:id] possible -
  end

  def update
    # if the restaurant just created the client it redirects them to the booking (of that client page)
    # | - going to do this default first
    # else the restaurant ...

    # @restaurant = current_user # not know if this is needed (probably yes)
    @client = @restaurant.client.find(params[:id]) # finding client to update, by ID
    if @client.update_attributes(client_params)
      flash[:success] = "Client succesfully updated!" #refrencing _flashes.html.erb on shared views
      redirect_to new_client_booking_path(@client.id) # get client that was updated ID, is .id needed?
    else
      render action: :edit
    end
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :phone_number,  :ccr) # added photo because of cloudinary
  end
end
