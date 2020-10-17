# ask the user for two numbers
# ask the user for the operation to perform
# perform the operation on the two numbers
# display the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

LANGUAGE = 'es'

def messages(message,lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key,LANGUAGE)
  puts "=> #{message}"
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(op)
  word = case op
         when '1'
           'Adding'
         when '2'
           'Subtracting'
         when '3'
           'Multiplying'
         when '4'
           'Dividing'
         end

  word
end

prompt('welcome')

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt('valid_name')
  else
    break
  end
end

puts ("Hello #{name}!")

loop do
  number1 = ''
  loop do
    prompt('number_1')
    number1 = gets.chomp

    break if number?(number1)
    prompt('error')
  end

  number2 = ''
  loop do
    prompt('number_2')
    number2 = gets.chomp

    break if number?(number2)
    prompt('error')
  end

  operation_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  puts '=>' + operation_prompt

  operator = ''
  loop do
    operator = gets.chomp

    break if %w(1 2 3 4).include?(operator)
    prompt('error_2')
  end

  puts "#{operation_to_message(operator)} the two numbers..."

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  puts "The answer is #{result}"

  prompt('repeat')

  choice = gets.chomp.downcase

  break unless choice.start_with?('y')
end

prompt('goodbye')