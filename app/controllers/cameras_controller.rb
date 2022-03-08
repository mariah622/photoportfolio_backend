class CamerasController < ApplicationController
    def index
      @camera = Camera.all
  
      render json: @camera
    end
  
    def show 
        @camera = Camera.find(params[:id])
        render json: @camera
      end
    
      def create 
        @camera = Camera.new(camera_params)
    
        if @camera.save 
          render json: @camera 
        else   
          render json: @camera.errors, status: unprocessable_entity # {error: 'Error creating'}
        end
      
      end

      def destroy
        @camera = Camera.find(params[:id])
        @camera.destroy
      end
  

  
    private
    
    
    def camera_params
        params.permit(:brand, :name, :id, :camera_type, :overview)
    end
end

