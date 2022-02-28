class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image_url

  attribute :owner, if: :current_user

  def owner
    current_user.id == object.id
  end
end
