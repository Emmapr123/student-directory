# list of students
students = [
 {name: "Dr. Hannibal Lecter", cohort: :november},
 {name: "Darth Vader", cohort:  :november},
 {name: "Nurse Ratched", cohort: :november},
 {name: "Michael Corleone", cohort: :november},
 {name: "Alex DeLarge", cohort: :november},
 {name: "The Wicked Witch of the West", cohort: :november},
 {name: "Terminator", cohort: :november},
 {name: "Freddy Krueger", cohort: :november},
 {name: "The Joker", cohort: :november},
 {name: "Joffrey Baratheon", cohort: :november},
 {name: "Norman Bates", cohort: :november} ]
 # print them

 def print_header
 puts "The students of Villains Academy"
 puts "-------------"
end

def input_students
  puts "please enter the name of the students\n to finish just hit return twice"
  #create an empty array
  students = []
  name = gets.chomp

  while !name.empty? do
  students << {name: name, cohort: :november}
  puts "we now have #{students.count} students"
  name = gets.chomp
  end

  students
end

def print_students(students)
  students.each { |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  }
end

# print the number of students
def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print_students(students)
print_footer(students)
