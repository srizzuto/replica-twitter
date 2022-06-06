class LikesController < ApplicationController

  def index
    @likes = Like.all
    render json: @likes
  end

  def create
    @like = Like.new(like_params)
    if @like.save
      render json: { message: "Liked!" }
    else
      @like.destroy
      render json: { message: "Unliked!" }
    end
  end


  private
  def like_params
    params.require(:like).permit(:comment_id, :user_id)
  end

end