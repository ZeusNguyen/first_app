class V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    render json: @users, each_serializer: UserSerializerV1
  end

  def show
    render json: @user, serializer: UserSerializerV1
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { message: "Failed to create user", errors: @user.errors }, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: { message: "User updated successfully" }, status: :ok
    else
      render json: { message: "Failed to update user", errors: @user.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    if @user.destroy
      render json: { message: "User has been deleted" }, status: :no_content
    else
      render json: { error: "Unable to delete user" }, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :address)
  end
end
