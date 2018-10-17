class EnrollController < ApplicationController

  def home
    @courses=Course.all
  end

  def search
    @subject = Subject.find_by(id: params[:subject][:id])
    @courses = @subject.courses.select{|c| c.name.downcase=~/.*#{params[:course_name].chomp}.*/}
    render 'home'
  end

  def enroll
    course = Course.find_by(code: params[:code])
    enrollment = Enrollment.new(user_id: current_user.id,
                                course_code: course.code)
    if enrollment.save
      flash.now[:success] = "You've enrolled #{course.code} successfully"
    else
      flash.now[:danger] = "Enroll failed!"
    end
    @courses=Course.all
    render 'home'
  end

  def drop
    user = User.find(current_user.id)
    enrollment = user.enrollments.find_by(course_code: params[:code])
    if enrollment.destroy
      flash[:success] = "You've dropped #{params[:code]} successfully"
    else
      flash[:success] = "Drop failed!"
    end
    redirect_to root_path
  end
end
