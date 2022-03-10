class FavoritesController < ApplicationController
  before_action :authenticate_user
  
  def index
    favorites = current_user.favorites
    render json: favorites
  end

  def create
    favorite = Favorite.new(
      user_id: current_user.id,
      business_id: params[:business_id]
    )
    if Favorite.exists?(user_id: current_user.id, business_id: params[:business_id])
      render json: { message: "You've already favorited this you doofus" }, status: :bad_request
    else 
      favorite.save
      render json: favorite, status: :created
    end
  end

  def destroy
    favorite = Favorite.find(params[:business_id])
    if favorite.user == current_user
      favorite.destroy
      render json: {message: "Favorite successfully destroyed!"}  
    else
      render json: {}, status: :unauthorized
    end
  end
end
