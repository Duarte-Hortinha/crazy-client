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

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :phone_number) # added photo because of cloudinary
  end

end
