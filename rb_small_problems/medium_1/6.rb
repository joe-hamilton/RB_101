# Stack Machine Interpretation

=begin
(Understand the Problem)
  Problem:
    Write a method that implements a miniature stack-and-register-based programming language that has the following commands:
      n Place a value n in the "register". Do not modify the stack.
      PUSH Push the register value on to the stack. Leave the value in the register.
      ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
      SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
      MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
      DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
      MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
      POP Remove the topmost item from the stack and place in register
      PRINT Print the register value

  Inputs: String
  Outputs: Integer
  Questions:
    1. What is a stack?
  Explicit Rules:
    1. A stack is a list of values that grows and shrinks dynamically. In ruby, a stack is easily implemented as an Array that just uses the #push and #pop methods.
    2. All operations are integer operations (which is only important with DIV and MOD).
    3. Your program may assume that all programs are correct programs; that is, they won't do anything like try to pop a non-existent value from the stack, and they won't contain unknown tokens.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes a String as an argument
    - The input String represents commands given to your miniature stack-and-register-based programming language
    - The input String will provide your program commands that must be carried out in the method
    - The method should return what the input String(commands) calls for

(Examples/Test Cases)
  minilang('PRINT')
  # 0

  minilang('5 PUSH 3 MULT PRINT')
  # 15

  minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
  # 5
  # 3
  # 8

(Data Structure)
    Integer

(Algorithm)
    - Define method `minilang` with one parameter `values`
      - Initialize local variable `register` and assign it to 0 (this represents the current value)
      - Initialize local variable `stack` and assign it to an empty Array
      - Split up `values` into individual elements to iterate through newly formed Array.
        - Given the set of commands, run the proper command based on the current element in the iteration
        - Taken the current element in the iteration...
          - If `n` place the current element in the `register`
          - If `PUSH` append `register` to `stack`. Leave the value in `register`
          - If `ADD` take the last element in `stack` and add it to `register`. Reassign `register` to the result
          - If `SUB` take the last element in `stack` and subtract it from `register`. Reassign `register` to the result
          - If `MULT` take the last element in `stack` and multiply it by `register`. Reassign `register` to the result
          - If `DIV` take the last element from `stack` and divide it into `register`. Reassign `register` to the result
          - If `MOD` take the last element from `stack` and divide it into `register`, except this time we reassign `register` to the remainder of the division
          - If `POP` remove the last element from `stack` and place it in `register`
          - If `PRINT` print `register`

(Code)
=end

def minilang(values)
  register = 0
  stack = []

  values.split.each do |command|
    case command
    when "DIV" then register /= stack.pop
    when "MOD" then register %= stack.pop
    when "POP" then register = stack.pop
    when "ADD" then register += stack.pop
    when "SUB" then register -= stack.pop
    when "MULT" then register *= stack.pop
    when "PUSH" then stack << register
    when "PRINT" then p register
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