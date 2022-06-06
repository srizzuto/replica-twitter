class CommentsController < ApplicationController

  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    if params[:user_id].nil?
      @comment =  Post.find(params[:post_id]).comments.find(params[:comment_id])
    else
      @comment =  User.find(params[:user_id]).posts.find(params[:post_id]).comments.find(params[:comment_id])
    end
  render json: @comment
  rescue
    render json: { error: "No existe el Comentario" }, status: 404
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment
    else
      render json: @comment.errors
    end
  end
  
  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end

end
