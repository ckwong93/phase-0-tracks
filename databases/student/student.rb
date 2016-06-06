require 'faker'
require 'sqlite3'

#Allows us to use sqlite3 and faker gems


db = SQLite3::Database.new("studentdatabase.db")
db.results_as_hash = true
#Uses sqlite3 gem to create a new database named "student_database"
#It will be saved as variable db so that we can manipulate data after

make_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS students(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255)
	score INT
	)
SQL
#String delimiter. basically allows us to set a variable equal to a sql command so that we can use it later
#Used in execute command below to create table in student.db
db.execute(make_table_cmd)

db.execute("INSERT INTO students (name,score) VALUES('Calvin',100)")
#Adds data into students table, which is located in the database

def student_creator(db,name,score)
	db.execute("INSERT INTO students (name,score) VALUES(?,?)", [name, score])
end
#Created command to create student and save into database

100.times do
	student_creator(db,Faker::Name.name ,Faker::Number.between(60,100))
end
#Use faker to create fake names

student_data = db.execute("SELECT * FROM students")
student_data.each do |student|
	puts "#{student['name']} has an average grade of #{student['score']} and is really smart!"
end
#ORM allows us to retrieve the student table data and save it as an array/hash into student_data variable

