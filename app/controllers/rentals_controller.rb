class RentalsController < ApplicationController
  before_action :authenticate_user!
  def new
    @vehicle = Vehicle.find(params[:vehicle_id])
    @rental = Rental.new
  end

  def create
    @vehicle = Vehicle.find(params[:vehicle_id])
    @rental = current_user.rentals.build(rental_params)
    @rental.vehicle = @vehicle

    if @rental.save
      redirect_to @vehicle, notice: 'Rental was successfully created.'
    else
      render :new
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_time, :end_time)
  end
end
