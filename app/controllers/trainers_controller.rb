class TrainersController < ApplicationController
  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find_by_id params[:id]
  end

  def new
    @trainer = Trainer.first
  end

  def create
    @trainer = Trainer.new(trainer_params)

    if @trainer.save
      redirect_to trainers_path
    else
      render('new')
    end
  end

  def edit
    @trainer = Trainer.find_by_id params[:id]
  end

  def update
    #bulk update to trainer params using 'Strong Paramas'
  end

  def destoy
    redirect_to trainers_path
  end

  private
  def trainer_params
    params.require(:trainer).permit(:name)
  end
end
