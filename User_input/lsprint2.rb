number_of_lines = nil

stop = nil

until stop
  loop do
    puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit):"
    number_of_lines = gets.chomp.downcase
    if number_of_lines == "q"
      stop = number_of_lines
      break
    else 
      break if number_of_lines.to_i >= 3
      puts ">> That's not enough lines."
    end
  end

  number_of_lines.to_i.times {puts 'Launch School is the best!'}
end
