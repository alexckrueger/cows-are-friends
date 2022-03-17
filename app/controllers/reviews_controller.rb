class ReviewsController < ApplicationController
  before_action :authenticate_user

  def create
    if Review.exists?(user_id: current_user.id, business_id: params[:business_id])
      render json: {errors: "You've already left a review of this business"}
    else
      review = Review.new(
        user_id: current_user.id,
        business_id: params[:business_id],
        overall_rating: params[:overall_rating],
        veggie_options_rating: params[:veggie_options_rating],
        menu_vegetarian_labels: params[:menu_vegetarian_labels],
        menu_vegan_labels: params[:menu_vegan_labels],
        menu_gluten_free_labels: params[:menu_gluten_free_labels],
        recommended_dishes: params[:recommended_dishes],
        comment: params[:comment],
        image_url: params[:image_url]
      )
      if review.save
        render json: review, status: :created
      else
        render json: { errors: review.errors.full_messages }, status: :bad_request
      end
    end
  end

  def destroy
    review = Review.find(params[:id])
    if review.user == current_user
      review.destroy
      render json: {message: "Review successfully destroyed!"}
    else
      render json: {}, status: :unauthorized
    end
  end

end
