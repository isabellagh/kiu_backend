class Api::V1::TrainersController < ApplicationController

  def index
    @trainers = Trainer.all
    render json: @trainers
  end

  def create
    @trainer = Trainer.new(trainer_params)
    if @trainer.save 
        render json: @trainer
    else  
      render json: {error: 'Error creating trainer'}
    end
  end

  def show
    @trainer = Trainer.find(params[:id])
    render json: @trainer
  end

  def destroy
    @trainer = Trainer.find(params[:id])
    @trainer.destroy 
  end

private

  def trainer_params
    params.require(:trainer).permit(:name, :email, :image, :bio, :age)
  end

end