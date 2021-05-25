=begin
Problem: Create a clock that is independent of date.

You should be able to add minutes to and subtract minutes from the time represented by a given clock object. Two clock objects that represent the same time should be equal to each other.

You may not use any built-in date or time functionality; just use arithmetic operations.

Understanding:
- Our clock objects should track hours and minutes.
- We should be able to add minutes to and subtract minutes from our clock objects.
- If two clock objects have the same time (both hour and minutes), they should be considered equal.
- We may want our clock object to use 24-hour notation rather than 12-hour notation since we only need to track hours and minutes, not the date.

Examples/tests:
From the tests we know:
- The clock class should have the following class methods
  -at
  -to_s
  -comparision methods to compare two clock objects
  - a to add minutes to the clock
  - a method to substract minutes from the clock
- A constructor that accepts hours and Minutes
- mintues default to 0 if not given
INPUT:
OUTPUT:
Rules:
  Explicit:
  Implicit:
D:
Approach:
Constructor
set @hours to hours
set @min to minutes

at method


to_s method
-return a string representation of hours prepended by 0

+ / - method

C:
=end

class Clock

  def initialize(hr, min = 0)

  end

  def at

  end

  def to_s

  end

  def <=>(other)

  end
end

=begin
Problem:
Rephrase:
Examples/tests:
INPUT:
OUTPUT:
Rules:
  Explicit:
  Implicit:
D:
Approach:
C:
=end