class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profil
<<<<<<< HEAD

  end

  def children
    @children = Family.find(current_user.family_id).users
  end

  def wish_validate
    @children = Family.find(current_user.family_id).users
  end

  def read_validate
    @children = Family.find(current_user.family_id).users
=======
    @user = User.find(params[:user_id])
    @reading_list_books = @user.user_books.pending.map{ |user_book| user_book.book }
    @wish_list_books = @user.user_books.wished.where(read_validate: false).map{ |user_book| user_book.book }
>>>>>>> b89b327aabb9796b4782cb7a7f90b24a824ef835
  end
end
