class PaintingsController < ApplicationController
  skip_before_action :authorized, only: [:create]
  
    def create
        painting = Painting.create(painting_params)
        

        result = {image: rails_blob_path(painting.image, only_path: true), user_id: painting.user_id,  topic_id: painting.topic_id}
        
        render json: result
    end
    
      private
        def painting_params
          params.permit(:user_id, :topic_id, :image)
        end
    

end
