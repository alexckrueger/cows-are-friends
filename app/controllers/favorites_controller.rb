class FavoritesController < ApplicationController
  def index
    favorites = Favorite.where(user_id: params[:user_id])
    render json: favorites
  end

  def create
    favorite = Favorite.new(
      user_id: params[:user_id],
      business_id: params[:business_id]
    )
    if favorite.save
      render json: favorite, status: :created
    else
      render json: { errors: favorite.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    Favorite.find(params[:id]).destroy
    render json: {message: "Favorite successfully destroyed!"}  
  end
end
