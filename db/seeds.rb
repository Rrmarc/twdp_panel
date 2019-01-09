# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cohort = Cohort.create(name: "Year1", start_date: 2016, end_date: 2019)
course1 = Course.create(subject: "S.E", time_completion: 100, description: "this is a test")
t = Teacher.create(name: "LILI", last_name: "LILO", age: 40, salary: 60000, subject: "S.E" )
s = Student.create(name: "Rashell", last_name: "Marcelino", age: 20, education_level: "YearUp")

cohort.course<<(course1)
cohort.teachers<<(t)
cohort.students<<(s)
cohort.save



