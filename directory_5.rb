=begin students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
=end 


def input_students
  puts "Please enter the name, then hobby, and then height of the student"
  puts "To finish, just hit return twice"

  students = []
  #puts "Name: "
  name = gets.chomp 
  #puts "Hobby: "
  hobby = gets.chomp 
  # puts "Height: "
  height = gets.chomp
  

  while !name.empty? do 
    students << {name: name, hobby: hobby, height: height, cohort: :november}

    if students.count == 1
      puts "now we have #{students.count} student"
    else
      puts "now we have #{students.count} students"
    end

    #puts "Name: "
    name = gets.chomp 
    #puts "Hobby: "
    hobby = gets.chomp 
    #puts "Height: "
    height = gets.chomp  
  end 

  students
end 

def print_header
  puts "The students of Villains Academy".center(100)
  puts "-------------".center(100)
end 

def print(students)
  students.each do |student|
  puts "#{student[:name]}'s hobby is #{student[:hobby]}, is #{student[:height]}, and is in the (#{student[:cohort]} cohort)".center(100)
  end 
end

def print_footer(students)
  if students.count == 1 
    puts "Overall, we have #{students.count} great studen.".center(100)
  else
  puts "Overall, we have #{students.count} great students.".center(100)
  end
end 

students = input_students 
print_header
print(students)
print_footer(students)