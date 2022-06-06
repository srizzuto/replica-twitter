class PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    if params[:user_id].nil?
      @post = Post.find(params[:post_id])
    else
      @post = User.find(params[:user_id]).posts.find(params[:post_id])
    end
    render json: @post
  rescue
    render json: { error: "No existe el Post"}, status: 404
  end
  
  def comments
    if params[:user_id].nil? 
      @comments = Post.find(params[:post_id]).comments
    else
      @comments = User.find(params[:user_id]).posts.find(params[:post_id]).comments
    end
    render json: @comments
  rescue
    render json: { error: "No existe el Post"}, status: 404
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)
    if @post.save
      render json: {
        status: :created,
        post: @post
      }
    else
      render json: @post.errors
    end
  end

  private

  def posts_params
    params.require(:post).permit(:content, :user_id)
  end

end
