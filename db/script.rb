require "json"

courseJson = File.open "./db/jsons/course.json"
course = JSON.parse courseJson.read
instructorJson = File.open "./db/jsons/instructor.json"
instructor = JSON.parse instructorJson.read
subjectJson = File.open "./db/jsons/subject.json"
subject = JSON.parse subjectJson.read

# puts course[0..10]
# puts instructor[0..10]
# puts subject[0..10]
