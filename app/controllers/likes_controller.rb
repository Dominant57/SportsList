class LikesController < ApplicationController

    def create
        @player=Player.new(id: params[:id])
        @like=Like.new
        @like.user_id=session[:user_id]
        @like.post_id=params[:post_id]
        @like.save
        redirect_to("/player/#{@player.id}/index")
    end
    def destroy
        @player=Player.new(id: params[:id])
        @like=Like.find_by(user_id: session[:user_id], post_id: params[:post_id])
        @like.destroy
        redirect_to("/player/#{@player.id}/index")
    end
end