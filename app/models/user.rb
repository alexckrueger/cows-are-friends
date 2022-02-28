class User < ApplicationRecord
  has_many :reviews
  has_many :favorites
  # custom - has_many :businesses, through: :favorites

  def businesses
    favorite_businesses = Favorite.where(user_id: id)
    favorites = []
    favorite_businesses.each do |business|
      favorites << HTTP.auth("Bearer " + Rails.application.credentials.yelp_api_key).get("https://api.yelp.com/v3/businesses/#{business.business_id}").parse(:json)
    end
    favorites
  end

end
