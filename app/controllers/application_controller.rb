class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :require_login

  private

    def require_login
      unless logged_in?
        # flash[:error] = "You must be logged in to access this section"
        redirect_to enter_path # halts request cycle
      end
    end
end
