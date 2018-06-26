class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  #def index
  #  @users = User.all
  #end
  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password))
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Restoran"
      redirect_to '/orders/';
    else
      render 'new'
    end
  end
end
