class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :created_at, :business
end
