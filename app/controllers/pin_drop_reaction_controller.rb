class PinDropReactionController < ApplicationController
  def create
    pin_drop_reaction = PinDropReaction.new(
      name: params[:name],
      image_url: params[:image_url],
      pin_drop_id: params[:pin_drop_id]
    )

    if pin_drop_reaction.save
      render.json: { message: "reaction placed!" }, status :created
    else
      render.json: { errors: pin_drop_reaction.errors.full.messages }, status :bad_request
    end
end
