class UsersController < ApplicationController

  def show    
    @books = current_user.books
    @books = Book.order("created_at DESC")
  end


end