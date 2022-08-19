class LocationController < ApplicationController
  def index
    @location = Location.all
    if params[:search]
      @location = @location.where("email ILIKE ?", "%#{params[:search]}%")
    end

    @location = @location.order(:id => :desc)

    render template: "location/index"
  end

  def show
    @location = Location.find_by(id: params[:id])
    render template: locations/index
  end

  def create
    location = Location.new(
      latitude: params[:latitude],
      longitude: params[:longitude],
      pin_drop_id: params[:pin_drop_id]
    )

    if location.save
      render json: { message: "location tied to pin!" }, status: :created
    else
      render json: { errors: location.errors.full.messages }, status: :bad_request
    end
  end
end
