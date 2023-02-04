class Book < ApplicationRecord
  has_many :user_books, dependent: :destroy
end
