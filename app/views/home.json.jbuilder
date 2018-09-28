json.array! @courses, partial: 'courses/course', as: :course
json.array! @instructors, partial: 'instructors/instructor', as: :instructor
json.array! @subjects, partial: 'subjects/subject', as: :subject
