class Api::V1::ClientsController < ApplicationController

  def index 
      if logged_in?
        @clients = current_user.clients
        render json: @clients
      else
        render json: {
          error: "Not logged in", status: :unauthorized
        }
      end 
    end
  
    def create 
      @client = current_user.clients.new(client_params)
      
      # binding.pry
      
      if @client.save
        # render json: @client, status: :created

        render json: @client, status: :created, location: @client
      else
        render json: @client.errors, status: :unprocessable_entity
      end
    end
  
    def show
      @client = Client.find_by_id(params[:id])
      render json: @client
    end
  
    def destroy
      @client = Client.find_by_id(params[:id])
      @client.destroy
      render json: @client.id
    end
      
    private
  
    def client_params
      params.require(:client).permit(:name, :age, :gender, :email, :goal, :image, :weight, :height, :waist, :hip, :user_id)
    end
end
