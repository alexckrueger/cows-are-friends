class Favorite < ApplicationRecord
  belongs_to :user

  def business
    response = HTTP.auth("Bearer " + Rails.application.credentials.yelp_api_key).get("https://api.yelp.com/v3/businesses/#{business_id}").parse(:json)
    return {
      business_id: response["id"],
      name: response["name"],
      image_url: response["image_url"],
      address: response["location"]["display_address"]
    }
  end

  
end
