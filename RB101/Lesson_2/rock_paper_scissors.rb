VALID_CHOICES = { r: 'rock', p: 'paper', s: 'scissors', l: 'lizard', S: 'Spock' }

win_conditions = { rock: ['lizard', 'scissors'],
                   paper: ['rock', 'Spock'],
                   scissors: ['paper', 'lizard'],
                   lizard: ['Spock', 'paper'],
                   Spock: ['rock', 'scissors'] }

def prompt(message)
  Kernel.puts("= >#{message}")
end

choice = ''
computer_choice = ''

loop do
  loop do
    puts "Choose one: "
    VALID_CHOICES.each { |k, v| puts "#{k} for #{v}." }
    choice = Kernel.gets().chomp().to_sym

    if VALID_CHOICES.keys.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.keys.sample.to_sym

  prompt("You chose: #{VALID_CHOICES.fetch(choice)} ; \
         Computer chose: #{VALID_CHOICES.fetch(computer_choice)}")

  if win_conditions[VALID_CHOICES.fetch(choice).to_sym].include?(VALID_CHOICES.fetch(computer_choice).to_s)
    prompt("You won!")
  elsif win_conditions[VALID_CHOICES.fetch(computer_choice).to_sym].include?(VALID_CHOICES.fetch(choice).to_s)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
