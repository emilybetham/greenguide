class LocationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    skip_policy_scope
    Location::CATEGORIES.each do |category|
      if params[:category].present?
        @locations = Location.all.where(category: params[:category])
      else
        @locations = Location.where.not(latitude: nil, longitude: nil)
      end
    end
    @markers = @locations.map do |location|
      {
        lng: location.longitude,
        lat: location.latitude,
        image_url: helpers.asset_url(location_category_pin_name(location))
      }
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

  def location_category_pin_name(location)
    case location.category
    when 'recyclage' then 'location-pin.png'
    when 'marché' then 'pin-red.png'
    when 'vetement' then 'pin-violet.png'
    when 'alimentation' then 'pin-jaune.png'
    when 'evenement' then 'pin-orange.png'
    else
      'placeholder.png'
    end
  end
end
