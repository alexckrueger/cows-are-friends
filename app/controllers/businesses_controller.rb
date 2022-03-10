class BusinessesController < ApplicationController
  def index
    businesses = HTTP.auth("Bearer " + Rails.application.credentials.yelp_api_key).get("https://api.yelp.com/v3/businesses/search?location=Chicago&categories=restaurants&term=#{params[:search]}").parse(:json)["businesses"]
    
    # Load reviews from database for each business
    businesses.each do |business|
      reviews = Review.where(business_id: business["id"])
      business[:overall_rating] = reviews.average(:overall_rating)
      business[:veggie_friendly_menu_rating] = reviews.average(:veggie_friendly_menu_rating)
      business[:veggie_options_rating] = reviews.average(:veggie_options_rating)
      business[:review_count] = reviews.count
    end
    
    render json: businesses
  end

  def show
    # receive business data as a hash
    business = HTTP.auth("Bearer " + Rails.application.credentials.yelp_api_key).get("https://api.yelp.com/v3/businesses/#{params[:id]}").parse(:json)

    # Loads each review 
    reviews = Review.where(business_id: business["id"])
    serialized_reviews = ActiveModelSerializers::SerializableResource.new(reviews).as_json
    business[:reviews] = serialized_reviews
    business[:overall_rating] = reviews.average(:overall_rating)
    business[:veggie_friendly_menu_rating] = reviews.average(:veggie_friendly_menu_rating)
    business[:veggie_options_rating] = reviews.average(:veggie_options_rating)
    business[:review_count] = reviews.count
  

    # Check if current_user favorited/reviewed this business
    if current_user
      business[:favorited] = Favorite.exists?(user_id: current_user.id, business_id: business["id"])
      business[:favorited_id] = Favorite.find_by(user_id: current_user.id, business_id: business["id"]).id
      business[:reviewed] = Review.exists?(user_id: current_user.id, business_id: business["id"])
    end
    
    render json: business
  end
end
