class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :camera_id
  belongs_to :camera
end
