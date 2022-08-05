class LocationController < ApplicationController
  def create
    location = Location.new(
      latitude: params[:latitude],
      longitude: params[:longitude],
      pin_drop_id: params[:pin_drop_id]
    )

    if location.save
      render.json: { message: "location tied to pin!" }, status :created
    else
      render.json: { errors: location.errors.full.messages }, status :bad_request
    end
end
