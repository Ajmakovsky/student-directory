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
  name = gets.rstrip
  cohort = gets.rstrip

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

    name = gets.rstrip 
    cohort = gets.rstrip
  end 

  students
end 





def print_header
  puts "The students of Villains Academy".center(100)
  puts "-------------".center(100)
end 

chosen_cohort = []

def print(students)

  #puts "what cohort would you like to choose?"
  #selected_cohort = gets.chomp

  cohorts = students.map { |student| student[:cohort] }.uniq
  
  cohorts.each do |cohort|
    puts "#{cohort} cohort:".center(100)
    students.each do |student|
      if student[:cohort] == cohort
        puts "#{student[:name]}".center(100)
      end
    end
    puts "\n"
    #if cohort(students[:cohort]) == selected_cohort
      #chosen_cohort.push(students[:name])
    #end
  end
end

=begin def print_cohort (student)
  chosen_cohort.each do |student|
    puts student
  end 
end
=end

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
# print_cohort(students)
print_footer(students)