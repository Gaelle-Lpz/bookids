class UserBook < ApplicationRecord
  belongs_to :user
  belongs_to :book
  has_many :reviews, dependent: :destroy
  enum :status, { wished: 0, pending: 1, read: 2 }, prefix: true, scopes: false
end
