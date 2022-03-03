class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :business_id, :overall_rating, :veggie_options_rating, :veggie_friendly_menu_rating, :recommended_dishes, :comment, :image_url, :created_at

  attribute :owner, if: :current_user

  def owner
    current_user.id == object.user_id
  end
end
