class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: {errors: @user.errors.full_messages}, status: :error
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: :found_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile_img, :password_digest)
  end


end
