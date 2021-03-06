class BusinessesController < ApplicationController
  def index
    if params[:search]
      params[:search].gsub!(" ", "%20")
    end
    if params[:location]
      params[:location].gsub!(" ", "%20")
    else
      params[:location] = "Chicago"
    end
    businesses = HTTP.auth("Bearer " + Rails.application.credentials.yelp_api_key).get("https://api.yelp.com/v3/businesses/search?location=#{params[:location]}&categories=restaurants&term=#{params[:search]}").parse(:json)["businesses"]
    
    # Load reviews from database for each business
    businesses.each do |business|
      reviews = Review.where(business_id: business["id"])
      business[:review_count] = reviews.count
      if reviews.length > 0
        business[:overall_rating] = reviews.average(:overall_rating).round(2)
        business[:menu_vegetarian_labels] = reviews.average(:menu_vegetarian_labels).round(2)
        business[:menu_vegan_labels] = reviews.average(:menu_vegan_labels).round(2)
        business[:menu_gluten_free_labels] = reviews.average(:menu_gluten_free_labels).round(2)
        business[:veggie_options_rating] = reviews.average(:veggie_options_rating).round(2)
      end
    end
    
    render json: businesses
  end

  def show
    # receive business data as a hash
    business = HTTP.auth("Bearer " + Rails.application.credentials.yelp_api_key).get("https://api.yelp.com/v3/businesses/#{params[:id]}").parse(:json)

    # Loads each review 
    reviews = Review.where(business_id: business["id"]).order(created_at: :desc)
    serialized_reviews = ActiveModelSerializers::SerializableResource.new(reviews).as_json
    business[:reviews] = serialized_reviews
    business[:review_count] = reviews.count
    if reviews.length > 0
      business[:overall_rating] = reviews.average(:overall_rating).round(2)
      business[:menu_vegetarian_labels] = reviews.average(:menu_vegetarian_labels).round(2)
      business[:menu_vegan_labels] = reviews.average(:menu_vegan_labels).round(2)
      business[:menu_gluten_free_labels] = reviews.average(:menu_gluten_free_labels).round(2)
      business[:veggie_options_rating] = reviews.average(:veggie_options_rating).round(2)     
    end
  
    # Check if current_user favorited/reviewed this business
    if current_user
      business[:favorited] = Favorite.exists?(user_id: current_user.id, business_id: business["id"])
      if Favorite.exists?(user_id: current_user.id, business_id: business["id"])
        business[:favorited_id] = Favorite.find_by(user_id: current_user.id, business_id: business["id"]).id
      end
      business[:reviewed] = Review.exists?(user_id: current_user.id, business_id: business["id"])
    end
    
    render json: business
  end
end
