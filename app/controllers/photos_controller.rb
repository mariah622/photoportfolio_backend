class PhotosController < ApplicationController

    def index
        photo = Photo.all
        render json: photo
    end
    
    def show 
        photo = Photo.find(params[:id])
        render json: photo
    end
      
    def create 
        photo = Photo.new(photo_params)
      
        if photo.save 
            render json: photo 
        else   
            render json: {error: 'Ooops! There was an error adding the photo.'}
        end
        
    end
  
    def destroy
        photo = Photo.find(params[:id])
        photo.destroy
    end
    
  
    
    private
      
      
    def photo_params
          params.permit(:image, :caption, :id, :likes)
    end


end
