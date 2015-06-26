def take_input
  choice = "y"
until choice.downcase == "n"
  puts "Please input a single-step math operation:"
  operation_input = gets.chomp
  checker = 0 
until checker == 1
  if operation_input.include? "*"
    storage = operation_input.split("*")
    num1 = storage.first.to_f
    num2 = storage.last.to_f
    checker=1
    mult(num1,num2)
  elsif operation_input.include? "x"
    storage = operation_input.split("x")
    num1 = storage.first.to_f
    num2 = storage.last.to_f
    checker=1
    mult(num1,num2)
  elsif operation_input.include? "/"
    storage = operation_input.split("/")
    num1 = storage.first.to_f
    num2 = storage.last.to_f
    checker=1
    div(num1,num2)
  elsif operation_input.include? "-"
    storage = operation_input.split("-")
    num1 = storage.first.to_f
    num2 = storage.last.to_f
    checker=1
    subt(num1,num2)
  elsif operation_input.include? "+"
    storage = operation_input.split("+")
    num1 = storage.first.to_f
    num2 = storage.last.to_f
    checker=1
    add(num1,num2)
  elsif operation_input.include "sqrt"
    num1 = operation_input.tr('sqrt ', '')
    square_root(num1.to_f)
  else
    puts "ERROR: Invalid operation request. Enter again:"
    operation_input = gets.chomp
    checker=0
  end
  end
puts "Care to do again? [Y/N]"
choice = gets.chomp.downcase
  unless (choice == "n") || (choice == "y") then
    puts "ERROR: Invalid input. Try again: [Y/N]"
    choice = gets.chomp.downcase
  end
end
end