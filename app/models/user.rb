class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :family
  has_many :user_books
  has_many :books, through: :user_books
  has_many :user_rewards
  has_many :rewards, through: :user_rewards
  acts_as_favoritor
  acts_as_favoritable

  include PgSearch::Model
  pg_search_scope :user_search,
    against: [:user_name],
    using: {
      tsearch: { prefix: true }
    }
end
