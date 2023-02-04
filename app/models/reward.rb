class Reward < ApplicationRecord
  has_many :user_rewards, dependent: :destroy
end
