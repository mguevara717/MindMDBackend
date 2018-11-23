class Api::V1::PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts, status: :accepted
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      render json: @post, status: :created
    else
      render json: {errors: @post.errors.full_messages}, status: :error
    end
  end

  def show
    @post = Post.find(params[:id])
    render json: @post, status: :found_post
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    if @post.save
      render json: @post, status: :updated
    else
      render json: {errors: @post.errors.full_messages}, status: :update_error
    end
  end

  def destroy
    @post.destroy
    render json: @post, status: :deleted
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :img_url, :user_id)
  end


end
