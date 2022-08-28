class UsersController < ApplicationController
  def index
    @users = User.all
    if params[:search]
      @users = @users.where("email ILIKE ?", "%#{params[:search]}%")
    end

    @users = @users.order(:id => :desc)

    render template: "users/index"
  end
  
  def show
    @user = User.find_by(id: params[:id])
    render template: "users/show"
  end

  def create
    user = User.new(
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

  if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    user_id = params[:id]
    user = User.find(user_id)
    user.destroy
    render json: {message: "user successfully deleted!"}
  end

end
