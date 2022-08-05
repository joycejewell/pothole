class PinDropsController < ApplicationController
  def create
    pin_drop = PinDrop.new(
      name: params[:name],
      image_url: params[:image_url],
      blurb: params[:blurb],
      user_id: params[:user_id]
    )

    if pin_drop.save
      render.json: { message: "pin dropped!" }, status :created
    else
      render.json: { errors: pin_drop.errors.full.messages }, status :bad_request
    end
  
end
