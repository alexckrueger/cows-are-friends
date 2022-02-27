class Review < ApplicationRecord
  belongs_to :user

  def business
    HTTP.auth("Bearer " + Rails.application.credentials.yelp_api_key).get("https://api.yelp.com/v3/businesses/#{business_id}").parse(:json)["name"]
  end
end
