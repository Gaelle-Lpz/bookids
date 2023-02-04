class BooksController < ApplicationController
  before_action :set_book, only: [:show, :destroy]
  def index
    @books = Book.all
    #define wish list and reading list
    @reading_list_books = current_user.user_books.where(wish_validate: true).map{ |user_book| user_book.book }
    @wish_list_books = current_user.user_books.where(wish_validate: false).map{ |user_book| user_book.book }
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    @book.save
  end

  def destroy
    @book.destroy
  end

  def reading_list
    @reading_list_books = current_user.user_books.where(wish_validate: true).map{ |user_book| user_book.book }
  end

  def wish_list
    @wish_list_books = current_user.user_books.where(wish_validate: false).map{ |user_book| user_book.book }
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:name, :description, :author, :image, :isbn, :score)
  end

end
