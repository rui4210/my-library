class BooksController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :edit, :search]


  def index
    @books = Book.order("created_at DESC")
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      return redirect_to books_path
    end
      render 'new'
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
  end

  def search
    @books = Book.search(params[:seach])
  end

  private

  def book_params
    params.require(:book).permit(:reading_situation_id, :record_date, :title, :cover, :genre, :author, :publishing, :memo, :impression, :image, :evaluation_id).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to user_session_path
    end
  end

end
