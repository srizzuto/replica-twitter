class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:user_id])
    render json: @user
  end
  
  def posts
    @posts = User.find(params[:user_id]).posts
    render json: @posts
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      render json: {
        status: :created,
        user: @user
      }
    else
      render json: { error: "El usuario ya existe" }, status: 400
    end
  end

  private
  def users_params
    params.require(:user).permit(:username, :city)
  end
end