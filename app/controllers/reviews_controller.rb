class ReviewsController < ApplicationController
  before_action :authenticate_user

  def index
    reviews = current_user.reviews
    render json: reviews
  end

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

  def show
    review = Review.find(params[:id])
    if review.user_id == current_user.id
      render json: review
    else
      render json: {}, status: :unauthorized
    end
  end

  def update
    review = Review.find(params[:id])
    if review.user_id == current_user.id
      review.overall_rating = params[:overall_rating] || review.overall_rating
      review.veggie_options_rating = params[:veggie_options_rating] || review.veggie_options_rating
      review.menu_vegetarian_labels = params[:menu_vegetarian_labels] || review.menu_vegetarian_labels
      review.menu_vegan_labels = params[:menu_vegan_labels] || review.menu_vegan_labels
      review.menu_gluten_free_labels = params[:menu_gluten_free_labels] || review.menu_gluten_free_labels
      review.recommended_dishes = params[:recommended_dishes] || review.recommended_dishes
      review.comment = params[:comment] || review.comment
      review.image_url = params[:image_url] || review.image_url
      if review.save
        render json: review
      else
        render json: {errors: review.errors.full_messages}
      end
    else
      render json: {}, status: :unauthorized
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
