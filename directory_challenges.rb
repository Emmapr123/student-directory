# in this file I will play around with array and hash options based on file directory.rb

# 1. directory with numbers in front of each student

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

# Add a number in front of the name
# def print_students(students)
#   students.each.with_index { |student, index|
#    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
#  }
# end

# Only print students whose names start with a "D"
# def print_students(students)
#  students.each { |student|
#    if student[:name][0] == "D"
#    puts "#{student[:name]} (#{student[:cohort]} cohort)"
#  end
#  }
# end

# Only print names that are longer than 12 characters
# AND use While instead of each
def print_students(students)
  while students[:name].length >= 12
    puts "#{students[:name]} (#{students[:cohort]} cohort)"
  end
end


# print the number of students
def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print_students(students)
print_footer(students)
