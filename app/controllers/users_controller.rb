class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @users = User.all
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user

    if @user.update(user_params)
      flash[:success] = 'Profile updated successfully'
      redirect_to @user
    else
      flash.now[:error] = 'Error updating profile'
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :first_name, :last_name, :bio, :gender)
  end
end
