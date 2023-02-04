class Book < ApplicationRecord
  has_many :user_books, dependent: :destroy
  has_many :reviews, through: :user_books
end
