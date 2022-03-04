class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    render json: current_user
  end

  def update
    user = current_user
    user.name = params[:name] || user.name
    user.image_url = params[:image_url] || user.image_url
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  def destroy
    current_user.destroy
    render json: {message: "User successfully destroyed!"}
  end
end
