# After Midnight Part 2

=begin
(Understand the Problem)
  Problem:
    Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively

  Inputs: String (hh:mm)
  Outputs: Integer (minutes)
  Questions:
    1.
  Explicit Rules:
    1. Both methods should return a value in the range 0..1439
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Create two methods that take a time of day in a 24-hour format (hh:mm), and returns the number of minutes before and after midnight

(Examples/Test Cases)
  after_midnight('00:00') == 0
  before_midnight('00:00') == 0
  after_midnight('12:34') == 754
  before_midnight('12:34') == 686
  after_midnight('24:00') == 0
  before_midnight('24:00') == 0

(Data Structure)
    Integer (minutes)

(Algorithm)
    - Initialize constant `HOURS_IN_DAY` and assign it to 24
    - Initialize constant `MIN_PER_HOUR` and assign it to 60
    - Initialize constant `MIN_IN_DAY` and assign to `HOURS_IN_DAY` * `MIN_PER_HOUR`
    - Define method `after_midnight` with one String parameter `str_time`
        - Split `str_time` by `:` and assign the first element to hours and the second to minutes. Create a new Array with `hours` and `minutes` as Integers
        - Multiply `hours` by 60, add the product to `minutes`, and use % to divide the return value to `MIN_IN_DAY`
    - Define method `before_midnight` with one String parameter `str_time`
        - Split `str_time` by `:` and assign the first element to hours and the second to minutes. Create a new Array with `hours` and `minutes` as Integers
        - Subtract `MIN_IN_DAY` and `after_midnight(str_time)` and save return value in `delta_minutes`
        - Return 0 if `delta_minutes` is equal to `MIN_IN_DAY`, otherwise return `delta_minutes`

(Code)
=end

HOURS_IN_DAY = 24
MIN_PER_HOUR = 60
MIN_IN_DAY = HOURS_IN_DAY * MIN_PER_HOUR

def after_midnight(str_time)
  hours, minutes = str_time.split(':').map(&:to_i)

  (hours * 60 + minutes) % MIN_IN_DAY
end

def before_midnight(str_time)
  hours, minutes = str_time.split(':').map(&:to_i)

  delta_minutes = MIN_IN_DAY - after_midnight(str_time)
  return 0 if delta_minutes == MIN_IN_DAY
  delta_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0


