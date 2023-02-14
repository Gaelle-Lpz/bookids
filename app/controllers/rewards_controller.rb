class RewardsController < ApplicationController
  def index
    @rewards = Reward.all
    @user_total_score = current_user.total_score
  end
end
