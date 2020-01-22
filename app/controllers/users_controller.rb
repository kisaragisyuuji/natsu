class UsersController < ApplicationController

  def mypage
    @user = User.find(current_user.id)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to("/")
  end
end
