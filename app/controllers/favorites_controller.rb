class FavoritesController < ApplicationController
  before_action :authenticate_user
  
  def index
    favorites = Favorite.where(user_id: current_user.id)
    render json: favorites
  end

  def create
    favorite = Favorite.new(
      user_id: current_user.id,
      business_id: params[:business_id]
    )
    if favorite.save
      render json: favorite, status: :created
    else
      render json: { errors: favorite.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    favorite = Favorite.find(params[:id])
    if favorite.user == current_user
      favorite.destroy
      render json: {message: "Favorite successfully destroyed!"}  
    else
      render json: {}, status: :unauthorized
    end
  end
end
