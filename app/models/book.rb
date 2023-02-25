class Book < ApplicationRecord
  has_many :user_books, dependent: :destroy
  has_many :reviews, through: :user_books

  include PgSearch::Model
  pg_search_scope :book_search,
    against: [ :name, :author, :isbn],
    using: {
      tsearch: { prefix: true }
    }

  def average_rating
    avg_rating = 0.0
    reviews.each do |review|
      if !review.rating.nil?
        avg_rating += review.rating / reviews.size
      end
    end
    return avg_rating
  end
end
