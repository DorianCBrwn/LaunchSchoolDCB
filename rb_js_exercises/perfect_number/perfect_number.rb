=begin
Problem: Write a program that can tell whether a number is perfect, abundant, or deficient.
Rephrase:
Examples/tests:
INPUT:
OUTPUT:
Rules:
  Explicit:
            We'll be given a number and we need to determine whether it is abundant, perfect, or deficient.
            Perfect: Sum of factors = number
            Abundant: Sum of factors > number
            Deficient: Sum of factors < number
            Factors are the numbers less than the input number that can be evenly divided into it. For example, the number 6 can be evenly divided by 1, 2, and 3.
  Implicit:
D:Array of digits from 0 - given number
Approach:
Create class that
C:
=end

class PerfectNumber
  def initialize
    @int = nil
  end

  def self.classify(int)
     int < 0 ? (raise StandardError.new) : @int = int
    return 'perfect' if find_factors.sum == @int
    return 'abundant' if find_factors.sum > @int
    'deficient'
  end
  private

  def self.find_factors
    factors = []
    1.upto(@int -1) do |i|
     factors << i if @int % i == 0
    end
    factors
  end
end
