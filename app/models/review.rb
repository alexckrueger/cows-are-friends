class Review < ApplicationRecord
  belongs_to :user
  validates :overall_rating, numericality: { in: 1..5 }
  validates :veggie_options_rating, numericality: { in: 1..5 }
  validates :veggie_friendly_menu_rating, numericality: { in: 1..5 }
  validates :recommended_dishes, length: { maximum: 80 }
  validates :comment, length: { in: 8..200 }

  def business
    HTTP.auth("Bearer " + Rails.application.credentials.yelp_api_key).get("https://api.yelp.com/v3/businesses/#{business_id}").parse(:json)
  end

end
