class BusinessesController < ApplicationController
  def index
    business = HTTP.auth("Bearer " + Rails.application.credentials.yelp_api_key).get("https://api.yelp.com/v3/businesses/search?location=Chicago&categories=restaurants&term=#{params[:search]}").parse(:json)["businesses"]
    # render json: business
    render json: BusinessSerializer.new(business).to_serialized_json
  end

  def show
    business = HTTP.auth("Bearer " + Rails.application.credentials.yelp_api_key).get("https://api.yelp.com/v3/businesses/#{params[:id]}").parse(:json)
    # render json: BusinessSerializer.new(business), adapter: :json
    render json: business, serializer: ActiveModel::Serializer.serializer_for(business)
  end
end
