class EntranceController < ApplicationController

  skip_before_action :require_login
  before_action :user_logged_in,
                only: [:main, :signup, :login]

  def main
  end

  def signup
    @user = User.new
  end

  def submit_signup
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to Not a Latte!"
      log_in @user
      redirect_to root_path
    else
      render 'signup'
    end
  end

  def login
  end

  def submit_login
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = 'Welcome to Not a Latte!'
      redirect_to root_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'login'
    end
  end

  def logout
    log_out
    redirect_to enter_path
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

    def user_logged_in
      if logged_in?
        redirect_to root_path
      end
    end
end
