=begin
(Understand the Problem)
  Problem:
    Write a method that takes a time using this minute-based format and returns the time of day
    in 24 hour format (hh:mm). Your method should work with any integer input.

  Inputs: Integer
  Outputs: String (Ex: "23:57")
  Questions:
    1.
  Explicit Rules:
    1. If the number of minutes is positive, the time is after midnight.
       If the number of minutes is negative, the time is before midnight.
    2. You cannot use `Date` or `Time` classes
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes a time in minutes and returns the time of day in a 24 hour format(hh:mm)
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
    String (Ex: "23:57")

(Algorithm)
    - Initialize constant `DAY_IN_MINUTES` to 1440
    - INITIALIZE constant `HOUR_IN_MINUTES` to 60
    - Find the modulo for `minutes` parameter % `DAY_IN_MINUTES` and save in variable `remainder`
    - After finding modulo, use that number and divide by `HOUR_IN_MINUTES` and save in variable `hours_minutes`
    - Assign both numbers to two variables `a` and `b`
    - Format time
=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(delta_time)
  delta_time = delta_time % MINUTES_PER_DAY
  hours,minutes = delta_time.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d',hours, minutes)
end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
# p time_of_day(35) #== "00:35"
# p time_of_day(-1437) #== "00:03"
# p time_of_day(3000) #== "02:00"
# p time_of_day(800) #== "13:20"
# p time_of_day(-4231) #== "01:29"