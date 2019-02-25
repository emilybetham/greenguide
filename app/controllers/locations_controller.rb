class LocationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @locations = policy_scope(Location)
  end

  def new
  end

  def create
    authorize @location
  end
end
