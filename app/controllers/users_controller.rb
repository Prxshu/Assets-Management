class UsersController < ApplicationController
  
  def show
    debugger
  end

  def index
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the Alpha Blog #{@user.username}, you have successfully signed up"
      redirect_to assests_path
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end
  
  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  
end
