class Camera < ApplicationRecord

    validates :brand, :name, :camera_type, :overview, presence: true 
    validates :name, uniqueness: true 
end
