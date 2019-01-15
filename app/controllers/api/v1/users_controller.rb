class Api::V1::UsersController < ApplicationController
  # skip_before_action :authorized
  before_action :set_user, only: [:new, :show, :update, :destroy]

  def index
    @users = User.all
    render json: @users, status: :accepted
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
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
    render json: @user, status: :ok
  end

  def update
  @user.update(user_params)
   render json: @user, status: :ok
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile_img, :password)
  end

  def set_user
    @user = User.find(params[:id])
   end


end
