 # I'm defining a class, Users
class UsersController < ApplicationController


  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password, :unit))
    if @user.save
      log_in(@user)
      # log the user in
      redirect_to root_path
    else
      render 'new'
    end
  end
end