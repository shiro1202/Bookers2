class UsersController < ApplicationController
  before_action :authenticate_user!

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
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "successfully"
      redirect_to user_path
    else
      flash.now[:alert] = "errors prohibited this obj from being saved:"
      render user_edit_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
