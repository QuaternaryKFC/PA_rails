class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def home
    @courses=Course.all
    @instructors=Instructor.all
    @subjects=Subject.all
    render './home'
  end
end
