class BusinessesController < ApplicationController
  def index
    business = HTTP.auth("Bearer " + Rails.application.credentials.yelp_api_key).get("https://api.yelp.com/v3/businesses/search?location=Chicago&categories=restaurants&term=#{params[:search]}").parse(:json)["businesses"]
    render json: business
  end

  def show
    # receive business data as a hash
    business = HTTP.auth("Bearer " + Rails.application.credentials.yelp_api_key).get("https://api.yelp.com/v3/businesses/#{params[:id]}").parse(:json)

    # Loads each review 
    reviews = Review.where(business_id: business["id"])
    serialized_reviews = ActiveModelSerializers::SerializableResource.new(reviews).as_json
    business[:reviews] = serialized_reviews

    # Check if current_user favorited/reviewed this business
    if current_user
      business[:favorited] = Favorite.exists?(user_id: current_user.id, business_id: business["id"])
      business[:reviewed] = Review.exists?(user_id: current_user.id, business_id: business["id"])
    end
    
    render json: business
  end
end
