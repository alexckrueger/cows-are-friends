class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :overall_rating, :veggie_options_rating, :veggie_friendly_menu_rating, :recommended_dishes, :comment, :image_url, :created_at

  belongs_to :user

end
