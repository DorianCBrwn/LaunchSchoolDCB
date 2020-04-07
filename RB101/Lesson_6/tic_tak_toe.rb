require 'pry'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
CHOOSE = "choose"
PLAYER = 'player'
COMPUTER = 'computer'

def choose_play_order
  loop do 
    prompt "pick who goes first: enter 'p' for player or 'c' for computer"
    choice = gets.chomp
    if choice.downcase.start_with?('p')
      prompt "Great the #{PLAYER} will go first."
      return choice = PLAYER
    elsif choice.downcase.start_with?('c')
      prompt "Great the #{COMPUTER} will go first."
      return choice = COMPUTER
    else 
      prompt "invalid response, please choose who will go first"
      return choice = CHOOSE
    end
    break unless choice == CHOOSE
  end
end

def set_play_order(choice)
  
end


def find_at_risk_square(brd, mark)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(mark) == 2
      x = line.reject{ |idx| brd[idx] == mark}.pop
    return x if empty_squares(brd).include?(x)
     else 
       next
      end
    end
  nil
end

def prompt(msg)
  puts "=> #{msg}"
end

scoreboard = { player_w: 0, computer_w: 0 }

# rubocop: disable Metrics/AbcSize
def display_board(brd)
  # system('clear')
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def joiner(arr, separator= ',', word= 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(separator)
  end
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end


def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{joiner(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)

    prompt "Sorry, that's not a vaild choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  #attack
  square = find_at_risk_square(brd, COMPUTER_MARKER)
  #defend
  if square.nil?
  square = find_at_risk_square(brd, PLAYER_MARKER) if find_at_risk_square(brd, PLAYER_MARKER) 
  end

  if square.nil? 
     square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |lines|
    if brd.values_at(*lines).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*lines).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def keep_score(scoreboard)
  restart = false
  if scoreboard[:player_w] >= 5
    prompt "Congradulations, you won the set"
    restart = true
  elsif scoreboard[:computer_w] >= 5
    prompt "Oh no, you lost the set"
    restart = true
  else
    prompt "The current score: Player: #{scoreboard[:player_w]} - Computer: #{scoreboard[:computer_w] } wins"
  end
  restart
end

def track_winners(brd, scoreboard)
  winner = detect_winner(brd)
   case winner
   when 'Player' then scoreboard[:player_w] += 1
   when 'Computer' then scoreboard[:computer_w] += 1
   end
end

loop do
  board = initialize_board

  loop do
    choose_play_order
    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  track_winners(board, scoreboard)


 break if keep_score(scoreboard)

  prompt "Play again? ( y or n )"
  answer = gets.chomp
  break unless answer.downcase.start_with? 'y'
end

prompt 'Thanks for playing tic tac toe, Good Bye!'
