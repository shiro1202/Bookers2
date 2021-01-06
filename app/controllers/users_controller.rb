class UsersController < ApplicationController
  
  def index
    @user = User.new
    @users = User.all
    @user = current_user
  end
  
  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
    @user = current_user
  end

  def edit
  end

  def update
  end
end
