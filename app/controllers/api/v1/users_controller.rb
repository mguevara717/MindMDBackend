class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, status: :accepted
  end

  def create
    @user = User.create(user_params)
    render json: @user, status: :created
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :mood, :email, :profile_img, :password_digest)
  end


end
