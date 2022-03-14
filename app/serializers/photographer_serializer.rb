class PhotographerSerializer < ActiveModel::Serializer
  attributes :id, :name, :hometown, :age, :years_experience, :hobbies
end
