class VehiclesController < ApplicationController
  def index
    @vehicles= Vehicle.all
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  private
  def veh_params
  params.require(:vehicle).permit(:model, :transmission, :power_source)
  end
end
