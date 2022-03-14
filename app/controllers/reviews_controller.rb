class ReviewsController < ApplicationController
    def index 
        reviews = Review.all
        render json: reviews
    end 

    def create
        review = Review.new(review_params)
        if review.save
            render json: review
        else
            render json: {error: 'Ooops! There was an error adding the review.'}
        end
    end
            
    def show 
        review = Review.find(params[:id])
        render json: review
    end

    private
      
      
    def review_params
          params.require(:review).permit(:id, :title, :description, :camera_id)
    end

    # :id, :title, :description, :camera_id
end
