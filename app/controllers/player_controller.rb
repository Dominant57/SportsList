class PlayerController < ApplicationController
def index
    @player=Player.find_by(id: params[:id])
    @comments=Comment.where player: @player.name
    @comment=Comment.new
    @review=@comments.all.average(:review)
end
def create
    @player=Player.find_by(id: params[:id])
    @comment=Comment.new
    @comment.content=params[:content]
    @comment.review=params[:review].to_f
    @comment.player=@player.name
    @user=User.find_by(id: session[:user_id])
    if session[:user_id]
        @comment.user=@user.name
        @comment.save
    else
        @comment.user==nil
        @comment.user="匿名ユーザー"
        @comment.save
    end
    redirect_to("/player/#{@player.id}/index")
end
end
