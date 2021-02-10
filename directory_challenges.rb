# in this file I will play around with array and hash options based on file directory.rb
students = [
 {name: "Dr. Hannibal Lecter", cohort: :november, hobby: "cooking", birthplace: "America", height: "185"},
 {name: "Darth Vader", cohort:  :november, hobby: "videogames", birthplace: "Tatooine", height: "170"},
 {name: "Nurse Ratched", cohort: :november, hobby: "cooking", birthplace: "America", height: "171"},
 {name: "Michael Corleone", cohort: :november, hobby: "soccer", birthplace: "America", height: "169"},
 {name: "Alex DeLarge", cohort: :november, hobby: "soccer", birthplace: "United Kingdom", height: "165"},
 {name: "The Wicked Witch of the West", cohort: :november, hobby: "cooking", birthplace: "America", height: "175"},
 {name: "Terminator", cohort: :november, hobby: "soccer", birthplace: "America", height: "186"},
 {name: "Freddy Krueger", cohort: :november, hobby: "hockey", birthplace: "America", height: "184"},
 {name: "The Joker", cohort: :november, hobby: "hockey", birthplace: "America"},
 {name: "Joffrey Baratheon", cohort: :november, hobby: "cooking", birthplace: "eww GAme of ThRonES", height: "157"},
 {name: "Norman Bates", cohort: :november, hobby: "hockey", birthplace: "America", height: "183"} ]

# 1. directory with numbers in front of each student

 def print_header
 puts "The students of Villains Academy"
 puts "-------------"
end

def input_students
  puts "please enter the name of the students\n to finish just hit return twice"
  #create an empty array
  students = []
  name = gets

  while !name.empty? do
  students << {name: name, cohort: :november}
  puts "we now have #{students.count} students"
  name = gets.chomp
  end

  students
end

# Add a number in front of the name
def print_students(students)
  students.each.with_index { |student, index|
    if student[:name] == nil
      puts "#{index + 1}. Unknown (#{student[:cohort]} cohort)"
    elsif student[:cohort] == nil
      puts "#{index +1}. #{student[:name]} (Unknown)"
    else
   puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
 end
 }
end

# Only print students whose names start with a "D"
# def print_students(students)
#  students.each { |student|
#    if student[:name][0] == "D"
#    puts "#{student[:name]} (#{student[:cohort]} cohort)"
#  end
#  }
# end

# Only print names that are shorter than 12 characters
# def print_students(students)
#   students.each { |student|
#     if student[:name].length < 12
#     puts "#{student[:name]} (#{student[:cohort]} cohort)"
#   end
#   }
#  end

# print the number of students
def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

# students = input_students
print_header
print_students(students)
print_footer(students)
