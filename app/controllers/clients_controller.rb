class ClientsController < ApplicationController
  before_action :authenticate_restaurant! # , except: :update

  def index
    @restaurant = current_restaurant

    my_params = {}
    my_params[:first_name] = params[:first] if params[:first].present?
    my_params[:last_name] = params[:last] if params[:last].present?
    my_params[:phone_number] = params[:phone] if params[:phone].present?

    if my_params.empty?
      @clients = Client.all
    else
      @clients = Client.filter(params[:first].downcase.capitalize, params[:last].downcase.capitalize, params[:phone])
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "shared/list", locals: {clients: @clients}, formats: [:html] }
    end
  end

  def show
    @client = Client.find(params[:id])
    @restaurant = current_restaurant
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    @client.ccr = 5.0
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
