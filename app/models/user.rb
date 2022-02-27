class User < ApplicationRecord
  has_many :reviews
  has_many :favorites
  # custom - has_many :businesses, through: :favorites

end
