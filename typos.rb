@students = []

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
# get the first name
  name = gets.chomp
# while the name is not empty, repeat this code
  while !name.empty? do
# add the student hash to the array
  @students << {name: name, cohort: :november}
  puts "Now we have #{@students.count} students"
# get another name from the user
  name = gets.chomp
  end
#return the array of students
  @students
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print_student_list
  @students.each { |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  }
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def menu_options
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    @students = input_students
  when "2"
    show_students
  when "9"
    exit
  else
    puts "I don't know what you meant, try again."
  end
end

def interactive_menu
  loop do
    menu_options
    process(gets.chomp)
  end
end

interactive_menu