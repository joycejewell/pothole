class UsersController < ApplicationController
  def create
    user = User.new(
      email: params[:email],
      password: params[:password],
    )

    if user.save
      render.json: { message: "user created!" }, status :created
    else
      render.json: { errors: user.errors.full.messages }, status :bad_request
    end
end
