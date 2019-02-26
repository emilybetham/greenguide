class LocationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    skip_policy_scope
    if params[:address].present?
      @locations = Location.near(params[:address], 5)
    else
      @locations = Location.where.not(latitude: nil, longitude: nil)
    end
    @markers = @locations.map do |location|
      if location.category == "recyclage"
        {
          lng: location.longitude,
          lat: location.latitude,
          image_url: helpers.asset_url('location-pin.png')
        }
      elsif location.category == 'marché'
        {
          lng: location.longitude,
          lat: location.latitude,
          image_url: helpers.asset_url('pin-red.png')
        }
      elsif location.category == 'vetement'
        {
          lng: location.longitude,
          lat: location.latitude,
          image_url: helpers.asset_url('pin-violet.png')
        }
      elsif location.category == 'alimentation'
        {
          lng: location.longitude,
          lat: location.latitude,
          image_url: helpers.asset_url('pin-jaune.png')
        }
      elsif location.category == 'evenement'
        {
          lng: location.longitude,
          lat: location.latitude,
          image_url: helpers.asset_url('pin-orange.png')
        }
      else
        {
          lng: location.longitude,
          lat: location.latitude,
          image_url: helpers.asset_url('placeholder.png')
        }
      end
    end
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
