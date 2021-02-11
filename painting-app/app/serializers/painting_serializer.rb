class PaintingSerializer < ActiveModel::Serializer
  attributes :id, :painting
  has_one :user
  has_one :topic
end
