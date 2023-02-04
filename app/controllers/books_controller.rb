class BooksController < ApplicationController
  before_action :set_book, only: [:show, :destroy]
  def index
    @books = Book.all
    @reading_list_books = @books.select { |book| book.user_books.user == current_user && book.user_books.wish_validate }
    @wish_list_books = @books.select { |book| book.user_books.user == current_user }
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
    @books = Book.all
  end

  def wish_list
    @books = Book.all
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:name, :description, :author, :image, :isbn, :score)
  end
end
