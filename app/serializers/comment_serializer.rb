class CommentSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :photo_id
  belongs_to :photo
end
