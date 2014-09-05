# calculate function
def calculate(f, a, b = 0)
  if f == "addition" || f == "+"
    puts "#{a} + #{b} = #{add(a, b)}"
    return add(a, b)
  elsif f == "subtraction" || f == "-"
    puts "#{a} - #{b} = #{subtract(a, b)}"
    return subtract(a, b)
  elsif f == "multiplication" || f == "*"
    puts "#{a} * #{b} = #{mult(a, b)}"
    return mult(a, b)
  elsif f == "division" || f == "/"
    puts "#{a} / #{b} = #{div(a, b)}"
    return div(a, b)
  elsif f == "exponent" || f == "^"
    puts "#{a} ^ #{b} = #{exp(a, b)}"
  else f == "square" || f == "square root"
    puts "the square root of #{a} = #{sqr(a)}"
    return sqr(a)
  end
end


# Methods which define math functions
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def mult(a, b)
  a * b
end

def div(a, b)
  if a % b != 0
    a.to_f / b.to_f
  else
    a / b
  end
end

def exp(a, b)
  a ** b
end

def sqr(a)
  Math.sqrt(a.to_f)
end


# String checker for user input
def string_catch(num)
  if num == ""
    return 0
  elsif
    num.to_i == 0 && num != "0"
    abort("That's not a number")
  else
    return num.to_i
  end
end




# Beginning of user inputs.
puts "Hello there!"

# Asking what math function user wants
def question
  puts "What kind of maths would you like to do?"
  @input = gets.chomp.downcase
end

# should run asking what math function user wants
question


# Funct checks if user input is expected or not
def input_checker(f)
  if f == "addition" || f == "+" || f == "subtraction" || f == "-" || f == "multiplication" || f == "*" || f == "division" || f == "/" || f == "exponent" || f == "^" || f == "square" || f == "square root"
    return f
  else
    abort("try again, that's not an operator")
  end
end


# performs input checker for non-approved operations
input_checker(@input)


# in case of sqr rt, only need one input
if @input == "square" || @input == "square root"
  puts "what number would you like to find the square root for?"
  num1 = gets.chomp

  # squareroot gets special calc bc of parameter issue
  first_num = string_catch(num1)
  calculate(@input, first_num)
else

  # Getting numbers from  user
  puts "What is the first number?"
  num1 = gets.chomp
  first_num = string_catch(num1)


  puts "Now, what is the second number?"
  num2 = gets.chomp
  second_num = string_catch(num2)


  # this is where calc puts it all together
  answer = calculate(@input, first_num, second_num)
end

# need to make another cycle somehow
puts "Hey, your answer was #{answer} do you want to do it again?"









#asks user yes/no continuation <-- need to make this repeating...
continue = gets.chomp

while continue == "yes"

  first_num = answer

  question
  input_checker(@input)


  # Second number q
  puts "Now, what is the second number?"
  num2 = gets.chomp
  second_num = string_catch(num2)

  answer = calculate(@input, first_num, second_num)

  puts "Hey, your answer was #{answer} do you want to do it again?"

  continue = gets.chomp
end
puts"See you later!"
