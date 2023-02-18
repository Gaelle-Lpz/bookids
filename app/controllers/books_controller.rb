class BooksController < ApplicationController
  before_action :set_book, only: [:show, :destroy]
  def index
    @books = Book.all
    #define wish list and reading list
    @reading_list_books = current_user.user_books.pending.map{ |user_book| user_book.book }
    @wish_list_books = current_user.user_books.wished.where(read_validate: false).map{ |user_book| user_book.book }

  end

  def show
    @reviews = @book.reviews
    @user_book = UserBook.find_by(user: current_user, book_id: @book.id)
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
    redirect_to books_path
  end

  def reading_list
    @reading_list_books = current_user.user_books.pending.map{ |user_book| user_book.book }
  end

  def wish_list
    @wish_list_books = current_user.user_books.wished.where(read_validate: false).map{ |user_book| user_book.book }
  end

  def search
    if params[:query].present?
      @search_books = Book.book_search(params[:query])
      if @search_books.empty?
        @search_books = []
        @books = GoogleBooks.search(params[:query], {:count => 3})
        @books.each do |book|
          @book = Book.new(name: book.title, description: book.description, author: book.authors, image: book.image_link, isbn: book.isbn, score: rand(10...100) )
          @book.save
          @search_books << @book
        end
      end
    else
      @search_books = Book.all
    end
  end

  def search_theme
    @theme_books = []
    @books = GoogleBooks.search("subject:#{params[:query]}", {:count => 10})
    @books.each do |book|
      @book = Book.new(name: book.title, description: book.description, author: book.authors, image: book.image_link, isbn: book.isbn, score: rand(10...100)  )
      @book.save
      @theme_books << @book
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:name, :description, :author, :image, :isbn, :score)
  end

end
