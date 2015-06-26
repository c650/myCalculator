$pi = Math::PI 
$e = Math::E 
#input control
def take_input
  puts "V: 2.5.00 | Charlie Sheen // HELIum"
  choice = "y"
  puts "Degrees or Radians? [D/R]: " #asks degrees or radians for trig probs
  $theta = gets.chomp.downcase
  unless ($theta == "r") || ($theta == "d") then #error checking
    puts "ERROR: Invalid input. [D/R]: "
    $theta = gets.chomp.downcase
  end
until choice.downcase == "n"
  puts "Please input a single-step math operation:"
  operation_input = gets.chomp
  checker = 0 
until checker == 1
  if operation_input.include? "*" #multiply
    storage = operation_input.split("*")
    num1 = storage.first.to_f
    num2 = storage.last.to_f
    checker=1
    mult(num1,num2)
  elsif operation_input.include? "x" #multiply
    storage = operation_input.split("x")
    num1 = storage.first.to_f
    num2 = storage.last.to_f
    checker=1
    mult(num1,num2)
  elsif operation_input.include? "/" #divide
    storage = operation_input.split("/")
    num1 = storage.first.to_f
    num2 = storage.last.to_f
    checker=1
    div(num1,num2)
  elsif operation_input.include? "-" #subtract
    storage = operation_input.split("-")
    num1 = storage.first.to_f
    num2 = storage.last.to_f
    checker=1
    subt(num1,num2)
  elsif operation_input.include? "+" #add
    storage = operation_input.split("+")
    num1 = storage.first.to_f
    num2 = storage.last.to_f
    checker=1
    add(num1,num2)
  elsif (operation_input.include? "s") && ((operation_input.include? "root" ) == false) && ((operation_input.include? "in" ) == false)#square
    storage = operation_input.gsub("s","")
    num1 = storage.to_f
    checker=1
    sqr(num1)
  elsif (operation_input.include? "c") && ((operation_input.include? "root" ) == false) && ((operation_input.include? "os" ) == false)#cube
    storage = operation_input.gsub("c","")
    num1 = storage.to_f
    checker=1
    cube(num1)
  elsif operation_input.include? "sroot" #squareroot
    storage = operation_input.gsub("sroot","")
    num1 = storage.to_f
    checker=1
    sroot(num1)
  elsif operation_input.include? "croot" #cuberoot
    storage = operation_input.gsub("croot","")
    num1 = storage.to_f
    checker=1
    croot(num1)
  elsif operation_input.include? "log" #logs
    storage = operation_input.gsub("log","")
    storage = storage.split(",")
    base = storage.first.to_f
    num1 = storage.last.to_f
    checker=1
    log(num1,base)
  elsif operation_input.include? "ln" #natural log
    storage = operation_input.gsub("ln","")
    num1 = storage.to_f
    checker=1
    ln(num1)
  elsif operation_input.include? "sin" #sine
    storage = operation_input.gsub("sin","")
    num1 = storage.to_f
    checker=1
    sin(num1)
  elsif operation_input.include? "cos" #cosine
    storage = operation_input.gsub("sin","")
    num1 = storage.to_f
    checker=1
    cos(num1)
  elsif operation_input.include? "tan" #tangent
    storage = operation_input.gsub("tan","")
    num1 = storage.to_f
    checker=1
    tan(num1)
  else #error protocol
    puts "ERROR: Invalid operation request. Enter again:"
    operation_input = gets.chomp
    checker=0
  end
  end
puts "Care to do again? [Y/N]"
choice = gets.chomp.downcase
  unless (choice == "n") || (choice == "y") then #error protocol
    puts "ERROR: Invalid input. Try again: [Y/N]"
    choice = gets.chomp.downcase
  end
end
end
#end input control

#methods for math ops
def mult(num1, num2)
  puts ((num1 * num2).round(2))
end

def div(num1, num2)
  puts ((num1 / num2).round(2))
end

def add(num1, num2)
  puts ((num1 + num2).round(2))
end

def subt(num1, num2)
  puts ((num1 - num2).round(2))
end

def sqr(num1)
  puts ((num1 ** 2).round(2))
end

def cube(num1)
  puts ((num1 ** 3).round(2))
end

def sroot(num1)
  puts (Math.sqrt(num1)).round(2)
end

def croot(num1)
  puts (Math.cbrt(num1).round(2))
end

def log(num1, base = 10)
  puts (Math.log(num1, base).round(2))
end

def ln(num1)
  puts (Math.log(num1).round(4))
end

def sin(num1)
  if $theta == "r"
    puts (Math.sin(num1).round(4))
  else
    num1 = num1 / 180
    num1 = num1 * ($pi)
    puts (Math.sin(num1).round(4))
  end
end

def cos(num1)
  if $theta == "r"
    puts (Math.cos(num1).round(4))
  else
    num1 = num1 / 180
    num1 = num1 * ($pi)
    puts (Math.cos(num1).round(4))
  end
end

def tan(num1)
  if $theta == "r"
    puts (Math.tan(num1).round(4))
  else
    num1 = num1 / 180
    num1 = num1 * ($pi)
    puts (Math.tan(num1).round(4))
  end
end
take_input #calls the method
#V: 2.5.00 | Charlie Sheen // HELIum