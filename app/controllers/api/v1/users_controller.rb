class Api::V1::UsersController < ApplicationController
  # skip_before_action :authorized, only: :create
  #i dont want users to see other users, therefore adding skip_before_action

  def index
    @users = User.all
    render json: @users, status: :accepted
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :created
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: :found_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile_img, :password)
  end




end
