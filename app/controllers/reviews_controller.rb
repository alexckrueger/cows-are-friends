class ReviewsController < ApplicationController

  def create
    review = Review.new(
      user_id: params[:user_id],
      business_id: params[:business_id],
      overall_rating: params[:overall_rating],
      veggie_options_rating: params[:veggie_options_rating],
      veggie_friendly_menu_rating: params[:veggie_friendly_menu_rating],
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

  def update
    review = Review.find(params[:id])
    review.overall_rating = params[:overall_rating] || review.overall_rating
    review.veggie_options_rating = params[:veggie_options_rating] || review.veggie_options_rating
    review.veggie_friendly_menu_rating = params[:veggie_friendly_menu_rating] || review.veggie_friendly_menu_rating
    review.recommended_dishes = params[:recommended_dishes] || review.recommended_dishes
    review.comment = params[:comment] || review.comment
    review.image_url = params[:image_url] || review.image_url
    if review.save
      render json: review
    else
      render json: {errors: review.errors.full_messages}
    end
  end

  def destroy
    Review.find(params[:id]).destroy
    render json: {message: "Review successfully destroyed!"}
  end

end
