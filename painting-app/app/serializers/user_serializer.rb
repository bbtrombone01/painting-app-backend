class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :tagline
  has_many :paintings
  has_many :topics, through: :paintings
end
