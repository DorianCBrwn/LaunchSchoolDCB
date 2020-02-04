# After Midnight (Part 2)




=begin 
Problem:
As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight.
If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is
before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after
midnight, respectively. Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.
  Rephrase: Create two methods that take in a string representation of time in the 24 hour format. 
            Before midnight returns the time in minutes before midnight
            After midnight returns the time in minutes after midnight
Examples/tests: 
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0
after_midnight('00:34') == 34
before_midnight('00:34') == 1406
after_midnight('13:20') == 800
before_midnight('13:20') == 640
after_midnight('23:59') == 1439
before_midnight('13:20') == 1

INPUT: 
      - String 
        -24 representation of hour and minutes
        contains : as divider between hours and minutes
        
OUTPUT:
      -integer between 0-1439
      -both '00:00' and '24:00' have the same return value of 0
Rules:
    Explicit: 
              Hour is 60 minutes
              Day is 24 hours
              Min_in_Day = 1440 minutes
              Time and Date methods are not permitted
              
    Implicit:
              minutes after midnight = hours * 60 + minutes 
              minutes before midnight = (hours * 60 + minutes) - Min_in_Day
              24:00 = 00:00
              
D: Array
    - split 
   Integer
    - (+, -, * )

Approach:
        - Define Constants Hour, Min_in_day
        - Define method after_midnight(string)
        - Split string into array two arrays hours and minutes respectively
          If hours = 24 reassign to 0
        - Return result : multiple hours value * Hour + Minutes value

        - Define method before_midnight(string)
        - Split string into array two arrays hours and minutes respectively
          If hours = 24 reassign to 0
              
        - Return result :minutes before midnight = (hours * 60 + minutes) - Min_in_Day
C:
=end

HOUR = 60
MIN_IN_DAY = 24 * 60

def after_midnight(hours_string)
  hh, mm = hours_string.split(':').map(&:to_i)
  hh = 0 if hh == 24
  (hh * HOUR) + mm
end

def before_midnight(hours_string)

  hh, mm = hours_string.split(":").map(&:to_i)
  result =   MIN_IN_DAY - ((hh * 60) + mm)
 if result.zero?
   0
 elsif result == 1440
   0
 else 
   result
 end
end

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0
after_midnight('00:34') == 34
before_midnight('00:34') == 1406
after_midnight('13:20') == 800
before_midnight('13:20') == 640
after_midnight('23:59') == 1439
