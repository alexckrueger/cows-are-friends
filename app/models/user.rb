class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :reviews
  has_many :favorites

  def businesses
    favorite_businesses = []
    favorites.each do |business|
      favorite_businesses << HTTP.auth("Bearer " + Rails.application.credentials.yelp_api_key).get("https://api.yelp.com/v3/businesses/#{business.business_id}").parse(:json)
    end
    favorite_businesses
  end

end
