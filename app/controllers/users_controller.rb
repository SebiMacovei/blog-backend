class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    render json: User.all
  end

  def create
    render json: User.create(filter_params)
  end

  def update
    user = User.find_by(id:params[:id])
    render json: user.update(filter_params)
  end

  def destroy
    render json: User.find_by(id:params[:id]).destroy
  end

  def find_by_id
    user = User.find_by(id:params[:id])
    render json: user
  end
  def filter_params
    params.require(:user).permit(:name, :username, :img_url,:email, :password, :sign_up_params  )
  end
end
