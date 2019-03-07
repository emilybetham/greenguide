class LocationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  PHOTO = {
    'recyclage' => 'https://images.unsplash.com/photo-1532996122724-e3c354a0b15b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    'marché' => 'https://images.unsplash.com/photo-1488459716781-31db52582fe9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
    'vêtement' => 'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    'compost' => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg',
    'jardin partagé' => 'https://images.unsplash.com/photo-1500651230702-0e2d8a49d4ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
  }

  def index
    skip_policy_scope
    address = params.dig(:search, :address)
    categories = params.dig(:search, :categories)
    if (address.present? && address != "") && (categories.present? && categories != [""])
      result = Geocoder.search(params[:search][:address]).first
      @searched_address_coordinates = [result.longitude, result.latitude] if result
      if params[:search][:categories].include? Location::CATEGORIES.first
        @locations = Location.near([result.latitude, result.longitude], 20)
      else
        @locations = Location.where(category: params[:search][:categories]).near(params[:search][:address], 20)
      end
    elsif (address.present? && address != "")
      result = Geocoder.search(params[:search][:address]).first
      @searched_address_coordinates = [result.longitude, result.latitude]
      @locations = Location.near([result.latitude, result.longitude], 20)
    elsif categories.present? && categories != [""]
      if params[:search][:categories].include? Location::CATEGORIES.first
        @locations = Location.all
      else
        @locations = Location.where(category: params[:search][:categories])
      end
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
    @location.photo = PHOTO[@location.category]
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
    when 'recyclage' then 'recyclage-pin.png'
    when 'marché' then 'marches-pin.png'
    when 'vêtement' then 'vetement-pin.png'
    when 'jardin partagé' then 'garden.png'
    else
      'compost-pin.png'
    end
  end
end
