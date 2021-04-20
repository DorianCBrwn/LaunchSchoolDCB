class Anagram
  def initialize(string)
    @string = string
  end

  def match(arr)
    arr.reject!{|w| w.downcase ==  @string.downcase}
    arr.select! do |w|
      w.downcase.chars.sort == @string.downcase.chars.sort
    end
  end
end