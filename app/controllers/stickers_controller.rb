class StickersController < ApplicationController
    def index
        @stickers = Sticker.all
    end
    
    def show
        @sticker = Sticker.find(params[:id])
    end
    
    def new
        
    end
    
    def create
        @sticker = Sticker.new(params[:post])
        
        @sticker.save
        redirect_to @sticker
    end
    
    private
        def post_params
            params.require(:post).permit(:title, :text)
        end
end
