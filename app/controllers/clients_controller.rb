class ClientsController < ApplicationController
  before_action :authenticate_restaurant! # , except: :update

  def index
    # if params[:first_name].present? || params[:phone_number].present? || params[:last_name].present?

    # else
    #   @clients = Client.all
    # end
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
    @client = Client.find(params[:id]) # getting the client ID, is this the way? - params[:id] possible -
  end

  def update
    # if the restaurant just created the client it redirects them to the booking (of that client page)
    # | - going to do this default first
    # else the restaurant ...

    @client = Client.find(params[:id]) # finding client to update, by ID

    if @client.update(client_params)
      # flash[:success] = "Client succesfully updated!" #refrencing _flashes.html.erb on shared views
      flash[:notice] = "Client info succesfully updated!"
      redirect_to root_path # to be replaced in the future
      # redirect_to new_client_booking_path(@client.id) # get client that was updated ID, is .id needed?
    else
      render action: :edit, status: :unprocessable_entity
    end
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :phone_number) # added photo because of cloudinary
  end
end
