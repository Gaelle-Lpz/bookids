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
    UserBook.update(@user_book.id, :status => 1)
    redirect_to reading_list_books_path
  end

  def wish_validate
    @user_book = UserBook.find(params[:id])
    UserBook.update(@user_book.id, wish_validate: true, status: 1)
    redirect_to children_path
  end

  def read_validate
    @user_book = UserBook.find(params[:id])
    UserBook.update(@user_book.id, read_validate: true, status: 2)
    redirect_to children_path
  end

  def mark_as_read
    @user_book = UserBook.find(params[:id])
    UserBook.update(@user_book.id, status: 2)
    redirect_to reading_list_books_path
  end
end
  #creer methode user_book params
