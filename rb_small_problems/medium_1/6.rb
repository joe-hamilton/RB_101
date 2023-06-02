# Stack Machine Interpretation

=begin
(Understand the Problem)
  Problem: Write a method that implements a miniature stack-and-register-based programming language that has the following commands
    
  Inputs: String 

  Outputs: Integer  

  Questions:
    1. 
    2. 

  Explicit Rules:
    1. You should initialize the register to 0.  
    2. All operations are integer operations (which is only important with DIV and MOD)

  Implicit Rules:
    1. 
    2. 

  Mental Model:
    - Write a method that takes a String containing specific commands and implement a stack-and-register based language
    - 

(Examples/Test Cases)
  minilang('PRINT')
  # 0

  minilang('5 PUSH 3 MULT PRINT')
  # 15 

(Data Structure)
    - Integer

(Algorithm)
    - Define method `minilang` with one parameter `program_str`
      - Initialize local variable `register` and assign to 0
      - Initialize local variable `stack` and assign to empty Array
      - Split up String into individual elements and assign to local variable `commands`
      - Iterate through `commands`
          - Based on current element, execute the proper command

(Code)
=end

def minilang(program_str)
  register = 0
  stack = []
  commands = program_str.split(' ')

  commands.each do |command|
    case command
    when 'PUSH' then stack << register
    when 'ADD' then register += (stack.pop).to_i
    when 'SUB' then register -= (stack.pop).to_i
    when 'MULT' then register *= (stack.pop).to_i
    when 'DIV' then register /= (stack.pop).to_i
    when 'MOD' then register %= (stack.pop).to_i
    when 'POP' then register = (stack.pop).to_i
    when 'PRINT' then puts register
    else register = command.to_i
    end
  end
end

minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')