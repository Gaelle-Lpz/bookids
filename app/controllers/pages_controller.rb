class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profil
    @user = User.find(params[:user_id])
    @reading_list_books = @user.user_books.pending.map{ |user_book| user_book.book }
    @wish_list_books = @user.user_books.wished.where(read_validate: false).map{ |user_book| user_book.book }
  end
end
