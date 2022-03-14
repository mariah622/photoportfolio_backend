class PhotographersController < ApplicationController

    def index 
        photographers = Photographer.all
        render json: photographers
    end 

    def create
        photographer = Photographer.new(photographer_params)
    
        if photographer.save 
          render json: photographer
        else   
            render json: {error: 'Ooops! There was an error adding the Photographer.'}
        end


    end 
    
    def show
        photographer = Photographer.find(params[:id])
        render json: photographer
    end 

    private
    
    
    def photographer_params
        params.require(:photographer).permit(:id, :name, :hometown, :age, :years_experience, :hobbies)
    end
end
