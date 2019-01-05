class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(params.require(:car).permit(:brand))

    if @car.save
      redirect_to cars_path
    else
      render :new
    end
  end

  def destroy
    Car.find(params[:id]).destroy
    redirect_to cars_path
  end
end
