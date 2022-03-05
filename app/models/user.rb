class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, length: { minimum: 2 }, uniqueness: true

  has_many :reviews
  has_many :favorites

end
