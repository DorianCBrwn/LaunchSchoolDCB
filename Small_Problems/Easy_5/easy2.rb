# After Midnight (Part 1)

=begin
Problem:
The time of day can be represented as the number of minutes before or after
midnight. If the number of minutes is positive, the time is after midnight.
If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns
the time of day in 24 hour format (hh:mm).  Your method should work with any
integer input.
  Rephrase:
Examples/tests:

time_of_day(0) == "00:00"

time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

INPUT:
- Integer
  - positive
  - negative
  - 0
  - representation of mintues
OUTPUT:
- String
  - 24 Hour format (hh:mm)
  - : character separates hours and minutes
Rules:
    Explicit: 
      -You may not use ruby's Date and Time classes.
      -If the number of minutes is positive the time is after midnight
      -If the number of minutes is negative the time is before midnight
      -Number must be returned in a specific format
    Implicit:
    - If number of minutes is greater than a full day 24 hour day the days are ignored
    - Time:
        - Min = 1
          Hour = min x 60
          Day = Hours * 24
          Min_in_day = Day / Min

D: Array
  - join
  String
  -Formatter
  -to_s

Approach:

Define method time_of_day 
Define Hour as 60
Define Min_in_Day as Hours * 24
Set min_after_midnight to int % Min_in_day
Calculate conversion of min_after_midnight to hours and minutes
Store values in two separate arrays hours(HH) and minutes(MM)
Convert hours and minutes  to strings 
Format strings to pad with 0 and take two spaces
join hours and mintues together, separate with :
  
C:
=end

  HOUR = 60
  Min_in_Day = HOUR * 24

def time_of_day(int)
  min_after_midnight = int % Min_in_Day

  hh_mm = min_after_midnight.divmod(HOUR)

  "%.2d:%.2d" % hh_mm
end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"
