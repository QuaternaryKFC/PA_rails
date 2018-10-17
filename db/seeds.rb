# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "json"

courseJson = JSON.parse(File.open("./db/jsons/course.json").read)
courses = []
instructorJson = JSON.parse(File.open("./db/jsons/instructor.json").read)
instructors = []
subjectJson = JSON.parse(File.open("./db/jsons/subject.json").read)
subjects = []
coursesubs = []

courseJson.each do |course|
  courses<<Course.new(code: course["code"],
                      description: course["description"],
                      name: course["name"])
  coursesubs+=
    course["subjects"]
      .map{|subject| CourseSub.new(course_code: course["code"],
                                   subject_id: subject["id"])}
end

instructorJson.each do |instructor|
  instructors<<Instructor.new(id: instructor["id"],
                              email: instructor["email"],
                              first: instructor["first"],
                              middle: instructor["middle"],
                              last: instructor["last"])
end

subjectJson.each do |subject|
  subjects<<Subject.new(id: subject["id"],
                        name: subject["name"],
                        abbreviation: subject["abbreviation"])
end

Course.import courses
Instructor.import instructors
Subject.import subjects
CourseSub.import coursesubs
