# Cute Angles

=begin
(Understand the Problem)
  Problem:
    Write a method that takes a floating point number that represents an angle between 0 and 360 angle_in_degrees and returns a String that represents that angle in angle_in_degrees, minutes and seconds.

  Inputs: Integer (floating number representing an angle between 0 and 360 angle_in_degrees)
  Outputs: String (%(30°00'00"))
  Questions:
    1.
  Explicit Rules:
    1. You should use a degree symbol (°) to represent angle_in_degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds
    2.  A degree has 60 minutes, while a minute has 60 seconds.
    3. You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07"
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Create a method that takes a floating number as an argument
    - The floating number represents an angle between 0 and 360 angle_in_degrees
    - Return a String that represents the angle in angle_in_degrees, minutes, and seconds

(Examples/Test Cases)
  dms(30) == %(30°00'00")
  dms(76.73) == %(76°43'48")
  dms(254.6) == %(254°36'00")
  dms(93.034773) == %(93°02'05")
  dms(0) == %(0°00'00")
  dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

(Data Structure)
    String (%(30°00'00"))

(Algorithm)
    - Initialize constant `DEGREE` and assign it to "\xC2\xB0"
    - Initialize constant `MIN_IN_DEGREE` and assign to 60
    - Initialize constant `SEC_IN_MIN` and assign to 60
    - Initialize constant `SEC_IN_DEGREE` and assign to `MIN_IN_DEGREE` + `SEC_IN_MIN`
    - Define method `dms` with one Integer parameter `angle_in_degrees`
        - Multiply `SEC_IN_DEGREE` by `angle_in_degrees`, then round the return value. Assign return value to initialized local variable `total_seconds`
        - Use divmod to divide `total_seconds` by `SEC_IN_DEGREE` to find `degrees` and  `remaining_seconds`
        - Use divmod once more to divide `remaining_seconds` by 60 to find `minutes` and `seconds`

(Code)
=end

DEGREE = "\xC2\xB0"
MIN_IN_DEGREE = 60
SEC_IN_MIN = 60
SEC_IN_DEGREE = MIN_IN_DEGREE * SEC_IN_MIN


def dms(angle_in_degrees)
  total_seconds = (SEC_IN_DEGREE * angle_in_degrees).round

  degrees, remaining_seconds = total_seconds.divmod(SEC_IN_DEGREE)
  minutes, seconds = remaining_seconds.divmod(60)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end



p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")