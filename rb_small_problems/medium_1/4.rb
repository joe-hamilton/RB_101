# 1000 Lights

=begin
(Understand the Problem)
  Problem: Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.
    
  Inputs: Integer 

  Outputs: Array (which switches are still left on) 

  Questions:
    1. 
    2. 

  Explicit Rules:
    1.  
    2. 

  Implicit Rules:
    1. 
    2. 

  Mental Model:
    - Create a method that takes an Integer argument, representing the total number of switches, and returns an Array that shows which switches are still on after `n` repetitions (represented by input Integer)
    - 

(Examples/Test Cases)
Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on  

(Data Structure)
    - Array

(Algorithm)
    - Create method `initialize_lights`
        - Create Hash 'lights' that contains the number of switches represented by `switches` argument
        - Return `lights`
    
    - Create method `every_nth_light`
        - Iterate through `lights` and change boolean to its opposite if switch number is greater than 0, the remainder of switch and position is equal to 0, and switch is greater than the position
        - Return `boolean`   

    - Create empty Hash and assign it to `new_hsh` 
    - Iniitialize local variable `lights` and assign it to `thousand_lights` method   
    - Create local variable `position` and assign to 2
    - Create loop...
        - Reassign `new_hsh` to method `initialize_lights`
        - Increase `position` by 1
        - break when `position` is greater than `switches`
    - Select all keys that are true from `new_hsh` and return those keys    

(Code)
=end

def initialize_lights(switches)
  lights = Hash.new
  1.upto(switches) { |switch| lights[switch] =  true } # {1=>true, 2=>true, 3=>true, 4=>true, 5=>true}
  lights
end

def every_nth_light(lights, position)
  lights.each do |switch, boolean|
    lights[switch] = !boolean if switch % position == 0 && switch !=0 && switch >= position
    boolean
  end
end

def thousand_lights(switches)
  new_hsh = Hash.new
  lights = initialize_lights(switches) 
  position = 2

  loop do
    new_hsh = every_nth_light(lights, position)
    position += 1
    break if position > switches
  end
  new_hsh.select! { |switch, boolean| switch if boolean == true}
  new_hsh.keys
end

p thousand_lights(5)
p thousand_lights(10)