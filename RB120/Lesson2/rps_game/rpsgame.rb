require 'pry'

class Move
  include Comparable
  attr_reader :name, :messages, :win_conditions

  def initialize(params = {})
    @name = params.fetch(:name, self.to_s)
    @messages = params.fetch(:messages, {})
    @win_conditions = params.fetch(:win_conditions, [])
  end
  

  def to_s
    self.class.to_s.capitalize
  end

  def <=>(other_move)
    if win_conditions.include?(other_move.name)
      1
    elsif other_move.win_conditions.include?(self.name)
      -1
    else
      0
    end
  end

  def win_message(other_move)
    puts "#{name} #{messages[other_move]}!" 
  end

end

class Rock < Move

  attr_reader :win_conditions

  def initialize
    super
    @messages = { lizard: "crushes Lizard", scissors: "crushes Scissors" }
    @win_conditions = ['Lizard', 'Scissors']
  end

end

class Paper < Move
  attr_reader :win_conditions

  def initialize
    super
    @messages = { rock: "covers Rock", spock: "disproves Spock" }
    @win_conditions = ['Rock', 'Spock']
  end
end

class Scissors < Move
  attr_reader :win_conditions

  def initialize
    super
    @messages = { paper: "cuts Paper", lizard: "decapitates Lizard" }
    @win_conditions = ['Paper', 'Lizard']
  end
end

class Lizard < Move
  attr_reader :win_conditions

  def initialize
    super
    @messages = { paper: "eats Paper", spock: "poisons Spock" }
    @win_conditions = ['Spock', 'Paper']
  end
end

class Spock < Move
  attr_reader :win_conditions

  def initialize
    super
    @messages = { scissors: "smashes Scissors", rock: "vaporizes Rock" }
    @win_conditions = ['Rock', 'Scissors']
  end
end

class Round

  def add_score
    self.score += 1
  end
end

class Display


end

class Player
  attr_accessor :move, :name, :score

  MOVESET = { 'rock' => Rock.new, 'scissors' => Scissors.new, 
              'paper' => Paper.new, 'lizard' => Lizard.new, 
              'spock' => Spock.new } 

  def initialize
    set_name
    @score = 0
  end

  def add_score
    self.score += 1
  end

  def display_score(move, score)
    puts "#{move} has #{score} points."
  end
end

class Human < Player
  attr_accessor :move


  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard, or spock:"
      choice = gets.chomp
      break if MOVESET.keys.include?(choice)
      puts "Sorry, invalid choice."
    end
    @move = MOVESET.fetch(choice)
  end

  private

  def set_name
    n = nil
    loop do
      puts "What's your name"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end


end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie', 'Sonny', 'Number 5'].sample
  end

  def choose
    @move = Computer::MOVESET.values.sample
  end
end

class Round
  attr_accessor :score, :history, :round_number
end

# Game Orcastration Engine
class RPSGame
  attr_accessor :human, :computer
  VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors. Good bye!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}"
  end

  def display_winner
    if human.move > computer.move
      human.add_score
      puts human.display_score
      puts "#{human.name} won!"
    elsif human.move < computer.move
      computer.add_score
      puts computer.display_score
      puts "#{computer.name} won!"
    else
      puts "It's a tie"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n."
    end

    return false if answer.downcase == 'n'
    return true if answer.downcase == 'y'
  end

  def play
      #binding.pry
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_moves
      display_winner
      break unless play_again?
    end
    display_goodbye_message
  end
end


 RPSGame.new.play
