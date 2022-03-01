class BusinessesController < ApplicationController
  def index
    restaurants = HTTP.auth("Bearer " + Rails.application.credentials.yelp_api_key).get("https://api.yelp.com/v3/businesses/search?location=Chicago&categories=restaurants&term=#{params[:search]}").parse(:json)
    render json: restaurants
  end

  def show
    restaurant = HTTP.auth("Bearer " + Rails.application.credentials.yelp_api_key).get("https://api.yelp.com/v3/businesses/#{params[:id]}").parse(:json)
    render json: restaurant
  end
end
