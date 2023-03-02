class RewardsController < ApplicationController
  def index
    @rewards = Reward.all
    @user_total_score = current_user.total_score
  end

  def update_avatar_url_user
    @reward = Reward.find(params[:reward_id])
    current_user.avatar_url = @reward.image
    current_user.save

    flash[:notice] = "Avatar updated with your reward ;)"
    sleep 3
    redirect_to rewards_path
  end
end
