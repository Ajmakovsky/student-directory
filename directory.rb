# First we put the students into an array 
students = [
  "Dr. Hannibal Lecter", 
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge", 
  "The Wicked Witch of the West", 
  "Terminator", 
  "Freddy Krueger", 
  "The Joker", 
  "Joffrey Baratheon",
  "Norman Bates",
]
#then print the students using a do/end block
puts "The students of Villains Academy"
puts "-------------"
students.each do |student|
  puts student
# Finally we print the total number of students 
puts "Overall, we have #{student_count.count} great students"