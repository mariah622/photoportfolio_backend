class CamerasController < ApplicationController
    def index
      cameras = Camera.all
      render json: cameras
    end
  
    def show 
        camera = Camera.find(params[:id])
        render json: camera
      end
    
      def create 
        camera = Camera.new(camera_params)
    
        if camera.save 
          render json: camera
        else   
            render json: {error: 'Ooops! There was an error adding the camera.'}
            
        end
      
      end

      def destroy
        camera = Camera.find(params[:id])
        camera.destroy
      end
  

  
    private
    
    
    def camera_params
        params.require(:camera).permit(:brand, :name, :id, :camera_type, :overview)
    end
end

