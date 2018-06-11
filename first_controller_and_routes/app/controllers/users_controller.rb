require 'byebug'
class UsersController < ApplicationController
  def index
    render json: User.all

  end

  def create
    user = User.new(params.require(:user).permit(:name, :email))
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
      # render json: params
    end
  end

  def show
    render json: User.find(params[:id])
  end

  def update
    user = User.update(params[:id], params.require(:user).permit(:name, :email))
    render json: user
  end

  def destroy
    user = User.delete(params[:id])
    render json: user
  end
end
