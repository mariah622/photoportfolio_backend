class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :image, :likes
  has_many :comments
end
