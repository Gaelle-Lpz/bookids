class UserBooksController < ApplicationController


  def create
    @user_book = UserBook.new
    @user_book.book = Book.find(params[:book_id])
    @user_book.user = current_user
    @user_book.save!
    redirect_to wish_list_books_path
  end
end
  #creer methode user_book params
