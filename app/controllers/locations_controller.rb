class LocationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    skip_policy_scope
    if params[:address].present? && params[:search].present?
      locations = Location.near(params[:address], 20)
      @locations = []
      locations.each do |location|
        @locations << location if location.category == params[:search][:categories]
      end
    elsif params[:address].present?
      @locations = Location.near(params[:address], 20)
    elsif params[:search].present?
      @locations = Location.where(category: params[:search][:categories])
    else
      @locations = Location.where.not(latitude: nil, longitude: nil)
    end
    @markers = @locations.map do |location|
      {
        lng: location.longitude,
        lat: location.latitude,
        image_url: helpers.asset_url(location_category_pin_name(location)),
        location_id: location.id
      }
    end
    respond_to do |format|
      format.html
      format.js
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
    when 'vêtement' then 'pin-violet.png'
    when 'alimentation' then 'pin-jaune.png'
    when 'événement' then 'pin-orange.png'
    else
      'placeholder.png'
    end
  end
end
