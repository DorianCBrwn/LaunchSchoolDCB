
# Cute angles
=begin
Problem:
  Write a method that takes a floating point number that represents an angle
  between 0 and 360 degrees and returns a String that represents that angle in
  degrees, minutes and seconds. You should use a degree symbol (°) to represent
  degrees, a single quote (') to represent minutes, and a double quote (") to
  represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

  Rephrase: convert a float into a string representation of an angle in degrees,min,sec
Examples/tests:
 dms(30) == %(30°00'00")
 dms(76.73) == %(76°43'48")
 dms(254.6) == %(254°36'00")
 dms(93.034773) == %(93°02'05")
 dms(0) == %(0°00'00")
 dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

INPUT: floating point number
        0- 360
OUTPUT: string
Rules:
    Explicit: formate minutes and seconds with a leading 0
              Degrees terminate in DEGREE
              Minutes terminate in "'"
              Seconds terminate in '"'
    Implicit: degrees = whole number of value
              minutes = decimal * 60
              seconds = minutes decimal * 60

D: Array & String

Approach:
  Initalize constant DEGREE
  Intialize methond dms which accepts a number as a parameter
  Initalize empty string result
  Set variables minutes and seconds to 0
  set degrees and minutes to result of integer divmod (1)
  set seconds to min * 60 
  set string result to concatiation of degrees minutes and seconds formated to leading 0s 
C:
=end
DEGREE = "\xC2\xB0"

def dms(int)
  degrees, dremainder = int.divmod(1)
  minutes = dremainder * 60
  _, sremainder = minutes.divmod(1)
  seconds = sremainder * 60
  result = format(%(#{degrees}#{DEGREE}%<min>.02d'%<sec>.02d"), min: minutes, sec: seconds)
end


dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
