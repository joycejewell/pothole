class PinDropsController < ApplicationController
    def index
      @pin_drops = PinDrop.all
      if params[:search]
        @pin_drops = @pin_drops.where("email ILIKE ?", "%#{params[:search]}%")
      end
  
      @pin_drops = @pin_drops.order(:id => :desc)
  
      render template: "pin_drops/index"
    end
  
    def show
      @pin_drop = PinDrop.find_by(id: params[:id])
      render template: pin_drops/index
    end

  def create
    pin_drop = PinDrop.new(
      name: params[:name],
      image_url: params[:image_url],
      blurb: params[:blurb],
      user_id: params[:user_id]
    )

    if pin_drop.save
      render json: { message: "pin dropped!" }, status: :created
    else
      render json: { errors: pin_drop.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    pin_drop_id = params[:id]
    pin_drop = PinDrop.find(pin_drop_id)
    pin_drop.destroy
    render json: {message: "pin_drop successfully deleted!"}
  end
end
