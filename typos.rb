@students = []

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
# get the first name
  name = STDIN.gets
# while the name is not empty, repeat this code
  while !name.empty? do
# add the student hash to the array
  @students << {name: name, cohort: :november}
  puts "Now we have #{@students.count} students"
# get another name from the user
  name = STDIN.gets
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
  puts "3. save the list to students.csv"
  puts "4. load students"
  puts "9. Exit"
end

def save_students
  file = File.open("students.csv", "w")
  @students.each { |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  }
  file.close
end

def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each { |line|
    name, cohort = line.chomp.split(",")
    @students << {name: name, cohort: cohort.to_sym}
  }
  file.close
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "loaded #{@students.count} from #{filename}"
  else
    puts "sorry, #{filename} doesnt exist"
    exit
  end
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    @students = STDIN.gets
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
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
