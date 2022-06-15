class Api::V1::ClientsController < ApplicationController

    before_action :set_trainers

  def index
    @clients = @trainer.clients
    render json: @clients
  end
    
  def show
    @client = Client.find(params[:id])
    render json: @client
  end
  
  def create
    @client = @trainer.client.build(client_params)
    if @client.save 
      render json: @client
    else  
      render json: {error: 'Error creating client'}
     end
  end
    
    
  def destroy
    @client = Client.find(params[:id])
    @client.destroy 
    render json: @client.id
  end
    
private

  def set_trainers
    @trainer = Trainer.find(params[:trainer_id])
  end
    
  def client_params
    params.require(:client).permit(:name, :email, :image, :gender, :goal, :age, :weight, :height, :waist, :hip, :trainer_id)
  end
    
end
