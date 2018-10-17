class Course < ApplicationRecord
  has_many :course_subs, primary_key: :code, foreign_key: :course_code
  has_many :subjects, through: :course_subs

  has_many :enrollments, primary_key: :code, foreign_key: :course_code
  has_many :students, through: :enrollments, source: :user
end
