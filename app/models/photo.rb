class Photo < ApplicationRecord
    validates :image, :likes, :caption, presence: true 
    validates :image, uniqueness: true 
end
