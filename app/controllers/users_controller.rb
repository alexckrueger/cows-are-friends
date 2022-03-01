class UsersController < ApplicationController
  before_action :authenticate_user, except: [:create, :show]

  def create
    user = User.new(
      name: params[:name],
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

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(current_user.id)
    user.name = params[:name] || user.name
    user.image_url = params[:image_url] || user.image_url
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  def destroy
    User.find(current_user.id).destroy
    render json: {message: "User successfully destroyed!"}
  end
end
