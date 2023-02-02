class UserReward < ApplicationRecord
  belongs_to :user_id
  belongs_to :reward_id
end
