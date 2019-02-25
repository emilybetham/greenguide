class LocationsController < ApplicationController
  skip_before_action :authenticat_user!, only: [:index]

  def index
    # skip_policy_scope
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to locations_path
    else
      render :new
  end

  private

  def location_params
    params.require(:location).permit(:name, :description, :address, :category, :photo, :price)
  end
end
