class Book < ApplicationRecord
  has_many :user_books, dependent: :destroy
  has_many :reviews, through: :user_books

  include PgSearch::Model
  pg_search_scope :book_search,
    against: [ :name, :author, :isbn],
    using: {
      tsearch: { prefix: true }
    }
end
