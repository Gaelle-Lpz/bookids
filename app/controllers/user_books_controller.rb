class UserBooksController < ApplicationController


  def create
    @user_book = UserBook.new
    @user_book.book = Book.find(params[:book_id])
    @user_book.user = current_user
    @user_book.status = 0
    @user_book.wish_validate = false
    @user_book.read_validate = false
    @user_book.save!
    redirect_to wish_list_books_path
  end

  def update
    @user_book = UserBook.find_by(user: current_user, book_id: params[:book_id])
    UserBook.update(@user_book.id, :read_validate => true)
    redirect_to reading_list_books_path
  end
end
  #creer methode user_book params
