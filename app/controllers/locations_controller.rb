class LocationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @locations = policy_scope(Location)
  end

  def new
    @location = Location.new
    authorize @location
  end

  def create

    @location = Location.new(location_params)
    if @location.save
      redirect_to locations_path
    else
      render :new
    end
    authorize @location
  end

  private

  def location_params
    params.require(:location).permit(:name, :description, :address, :category, :photo, :price)
  end
end
