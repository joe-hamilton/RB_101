# After Midnight Part 1

=begin
(Understand the Problem)
  Problem:
    Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm)

  Inputs: Integer (time in day)
  Outputs: String ('hh:mm')
  Questions:
    1.
  Explicit Rules:
    1. You may not use ruby's Date and Time classes.
    2. If the number of time is positive, the time is after midnight. If the number of time is negative, the time is before midnight.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Create a method that takes an Integer as an argument, that represents time in a minute-based format,
      and returns a String representing the time of day in a 24-hour format (hh:mm)
    -

(Examples/Test Cases)
  time_of_day(0) == "00:00"
  time_of_day(-3) == "23:57"
  time_of_day(35) == "00:35"
  time_of_day(-1437) == "00:03"
  time_of_day(3000) == "02:00"
  time_of_day(800) == "13:20"
  time_of_day(-4231) == "01:29"

(Data Structure)
    String (hh:mm)

(Algorithm)
    - Initialize constant `HOURS_IN_DAY` and assign it to 24
    - Initialize constant `MIN_PER_HOUR` and assign it to 60
    - Initialize constant `MIN_IN_DAY` and assign to `HOURS_IN_DAY` * `MIN_PER_HOUR`
    - Define method `time_of_day` with one Integer parameter `time`
        - While `time` is less than 0, reassign the value of `time` + `MIN_IN_DAY` to `time`
        - Use the modulo operator to divide `time` by `MIN_IN_DAY`. Assign value to `time`
        - Use divmod to divide `time` and `MIN_PER_HOUR`. Assign value to `hours`, `minutes`
        - Format `hours` and `minutes` to reflect (hh:mm)
(Code)
=end

HOURS_IN_DAY = 24
MIN_PER_HOUR = 60
MIN_IN_DAY = HOURS_IN_DAY * MIN_PER_HOUR

def time_of_day(time)
  while time < 0
    time += MIN_IN_DAY
  end

  time = time % MIN_IN_DAY
  hours, minutes = time.divmod(MIN_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"