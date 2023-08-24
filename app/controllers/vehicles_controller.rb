class VehiclesController < ApplicationController
  def index
    @vehicle = Vehicle.new
    @vehicles = Vehicle.all.sort_by{ |h| h[:created_at] }.reverse!
  end

  def show
    @vehicle = Vehicle.find(params[:id])
    @rental = Rental.new
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(veh_params)
    if @vehicle.save
      redirect_to vehicles_path, notice: 'Vehicle was succesfully listed'
    else
      render :new
    end
  end

  private

  def veh_params
    params.require(:vehicle).permit(:model, :transmission, :power_source, :photo)
  end

  def pic_params
    params.require(:photo).permit(:title, :body, :photo)
  end
end
