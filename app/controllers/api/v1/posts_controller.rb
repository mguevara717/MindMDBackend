class Api::V1::PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts, status: :accepted
  end

  def create
    @post = post.create(post_params)
    render json: @post, status: :created
  end

  def show
    @post = Post.find(params[:id])
    render json: @post, status: 200
  end

  def edit
  end

  def update
    @note.update(post_params)
    render json: @post, status: :updated
  end

  private

  def set_post
    @post = Post.find_by(id: params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :img_url, :user_id)
  end



end
