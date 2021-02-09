# list of students
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
 "Norman Bates" ]
 # print them
 
 def print_header
 puts "The students of Villains Academy"
 puts "-------------"
end

def print_students(students)
  students.each { |student|
    puts student
  }
 end

# print the number of students
def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

print_header
print_students(students)
print_footer(students)
