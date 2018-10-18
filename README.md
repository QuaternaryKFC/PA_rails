# README

This is a work by **Fengzhencheng Zeng**  
for 166b homework 20.2  

Heroku app link:  https://fz-pa-rails.herokuapp.com/  
Private BitBucket repo: https://bitbucket.org/QuaternaryKFC/pa_rails/src/master/

## Changelog:
* Added signup and login functions, now you must register and login to access major functions. To signup, you need a name, a valid email and a password with at least 6 digits

* Updated home page. Now it shows the courses you've enrolled via your account. You can also drop the courses you've enrolled at home page

* Removed tabs for viewing *instructors* and *subjects*

* Added search and enroll page, which can be accessed through the home page. You can specify the subject of the course and keywords (case insensitive) in the course name to search for courses. You may enroll the courses as you needed. You may not enroll a course for more than once

## Controllers:
*(shows only GET method here)*
* entrance  
  Control the access of the app
  * /enter map to the main action, which returns a entrance page
  * /signup map to the signup action, which returns the page for signup
  * /login map to the login action, which returns the page for login


* users  
  Process user related requests
  * /users/:id map to the show action, which returns a home page for the user logged in. The page shows the list of courses enrolled by the user


* enroll  
  Process enrollment related requests
  * /enroll map to the home action, which returns a page for search and enroll. The course list shows all the courses by default
  * /search map to the search action, which renders the page for search and enroll with a list of courses that satisfies the conditions


* courses, instructors, subjects  
  *Obsolete*
