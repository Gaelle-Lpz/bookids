class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @user_book = UserBook.find(params[:user_book_id])
  end

  def create
    @user_book = UserBook.find(params[:user_book_id])
    if review_params[:rating] != "" && review_params[:comment]
      @review = Review.new(review_params)
      @review.user_book = @user_book
      if @review.save
        redirect_to book_path(@user_book.book)
      else
        render "books/show"
      end
    else
      redirect_to new_user_book_review_path(@user_book.id)
    end
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
