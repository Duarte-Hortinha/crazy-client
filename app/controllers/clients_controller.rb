class ClientsController < ApplicationController
  def index
    @clients = Client.all
    
  def show
    @client = Client.find(params[:id])
  end
end
