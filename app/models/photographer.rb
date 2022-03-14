class Photographer < ApplicationRecord
    validates :name, :hometown, :age, :years_experience, :hobbies, presence: true 
    
end
