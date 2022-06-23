class Api::V1::UsersController < ApplicationController

  def index 
      @users = User.all
      render json: @users
      # if @users
      #   render json: (@users)
      # else 
      #   render json: {status: 500, errors: ["No users found"]}
      # end
    end
  
    def create 
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        render json: @user, status: :created
      else
        resp = {
          error: @user.errors.full_messages.to_sentence
        }
        render json: resp, status: :unprocessable_entity
      end
    end
  
    def show
      @user = User.find_by_id(params[:id])
      render json: @user
    end
  
    def destroy
      @user = User.find_by_id(params[:id])
      @user.destroy
    end
      
    private
  
    def user_params
      params.require(:user).permit(:name, :email, :image, :password, :age, :bio )
    end
  
end