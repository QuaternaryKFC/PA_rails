class UsersController < ApplicationController
  def home
    redirect_to user_path(id: current_user.id)
  end

  def show
    @user = User.find(current_user.id)
    @courses = @user.courses
  end
end
