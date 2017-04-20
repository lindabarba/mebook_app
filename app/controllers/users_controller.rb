class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to root_path
    end
  end

  def edit
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :image)
  end

end
