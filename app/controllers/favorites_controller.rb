class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorites = current_user.all_favorited
  end

  def create
    @user = User.find(params[:user_id])
    current_user.favorite(@user)

    flash[:notice] = "User add to Friend !"
    redirect_to favorites_path
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.unfavorite(@user)
    flash[:notice] = "User delete !"
    redirect_to favorites_path
  end

  def search_user
    if params[:query].present?
      @users = User.user_search(params[:query])
    else
      @users = User.all
    end
  end
end
