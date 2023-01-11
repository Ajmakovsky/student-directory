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
  puts "Please enter the name then cohort of the student"
  puts "To finish, just hit return twice"

  students = []
  name = gets.chomp 
  cohort = gets.chomp

  while !name.empty? do 

    if cohort.empty?
      cohort = "November"
    end

    students << {name: name, cohort: cohort}

    if students.count == 1
      puts "now we have #{students.count} student"
    else
      puts "now we have #{students.count} students"
    end

    name = gets.chomp 
    cohort = gets.chomp 
  end 

  students
end 

def print_header
  puts "The students of Villains Academy".center(100)
  puts "-------------".center(100)
end 

def print(students)
  students.each do |student|
  puts "#{student[:name]} is in the (#{student[:cohort]} cohort)".center(100)
  end 
end

def print_footer(students)
  if students.count == 1 
    puts "Overall, we have #{students.count} great student".center(100)
  else
  puts "Overall, we have #{students.count} great students".center(100)
  end
end 

students = input_students 
print_header
print(students)
print_footer(students)