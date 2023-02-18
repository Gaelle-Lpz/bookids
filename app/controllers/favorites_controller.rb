class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorites = current_user.favorited_users
  end

  def create
    @user = User.find(params[:user_id])
    current_user.favorite(@user)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.unfavorite(@user)
    redirect_to user_path(@user)
  end

  def search
    if params[:query].present?
      @users = User.search_by_name(params[:query])
    else
      @users = User.all
    end
  end
end
