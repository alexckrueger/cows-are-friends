class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :name

  # def reviews
  #   Review.where(business_id: business_id)
  # end

end
