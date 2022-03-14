class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :image, :likes, :caption
end
