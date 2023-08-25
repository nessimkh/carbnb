class RentalsController < ApplicationController
  before_action :authenticate_user!

  def index
    @rentals = Rental.all
  end

  def show
    @rental = Rental.find(params[:id])
  end

  def new
    @vehicle = Vehicle.find(params[:vehicle_id])
    @rental = Rental.new
  end

  def create
    @vehicle = Vehicle.find(params[:vehicle_id])
    @rental = current_user.rentals.build(rental_params)
    @rental.vehicle = @vehicle

    if @rental.save
      redirect_to vehicle_rental_path(@vehicle.id, @rental), notice: 'Rental was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_time, :end_time)
  end
end
