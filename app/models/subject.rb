class Subject < ApplicationRecord
  self.primary_key="id"
  has_many :course_subs
  # you need to specify the primary_key in the belongs_to in course_sub
  has_many :courses, through: :course_subs, source: :course
end
