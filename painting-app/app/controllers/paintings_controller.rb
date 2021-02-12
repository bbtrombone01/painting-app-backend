class PaintingsController < ApplicationController

    def create
        byebug
        painting = Painting.create(painting_params)
        
        render json: painting  
    end
    
      private
        def painting_params
          params.require(:painting).permit(:user_id, :topic_id, :painting)
        end
    

end
