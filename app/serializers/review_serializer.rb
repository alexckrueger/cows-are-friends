class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :overall_rating, :veggie_options_rating, :menu_vegetarian_labels, :menu_vegan_labels, :menu_gluten_free_labels, :recommended_dishes, :comment, :image_url, :created_at, :business

  belongs_to :user

end
