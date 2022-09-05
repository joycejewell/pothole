class PinDropReactionController < ApplicationController
  def index
    @pin_drop_reaction = PinDropReaction.all
    if params[:search]
      @pin_drop_reaction = @pin_drop_reaction.where("email ILIKE ?", "%#{params[:search]}%")
    end

    @pin_drop_reaction = @pin_drop_reaction.order(:id => :desc)

    render json: @pin_drop_reaction.as_json

  end

  def show
    @pin_drop_reaction = PinDropReaction.find_by(id: params[:id])
    render template: pin_drop_reactions/index
  end

  def create
    pin_drop_reaction = PinDropReaction.new(
      name: params[:name],
      image_url: params[:image_url],
      pin_drop_id: params[:pin_drop_id]
    )

    if pin_drop_reaction.save
      render json: { message: "reaction placed!" }, status: :created
    else
      render json: { errors: pin_drop_reaction.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    pin_drop_reaction_id = params[:id]
    pin_drop_reaction = PinDropReaction.find(pin_drop_reaction_id)
    pin_drop_reaction.destroy
    render json: {message: "reaction successfully deleted!"}
  end
end
