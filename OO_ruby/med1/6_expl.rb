# Create an object-oriented number guessing class for numbers in the range 1 to 100, with a limit of 7 guesses per game. The game should play like this:

class Player
  attr_accessor :name, :remaining_guesses, :guess

  def initialize(num_guesses)
    @name = get_name
    @remaining_guesses = num_guesses
    @guess = nil
  end

  def get_name
    name = nil
    loop do
      puts "What's your name?"
      name = gets.chomp
      break if name.match?(/\w+/) 
      puts "Sorry, you must provide a name with letters."
    end
    name
  end 

  def remaining_guesses?
    remaining_guesses > 0
  end

  def make_guess(range)
    @guess = ask_for_number(range)
    @remaining_guesses -= 1
  end

  private

  def ask_for_number(range)
    num = nil
    loop do
      puts "#{name}, you have #{remaining_guesses} guesses remaining."
      print "enter a number between #{range.first} and #{range.last}: "
      num = gets.chomp.to_i
      break if valid_num?(num) && range === num
      print "Invalid guess. "
    end
    num
  end

  def valid_num?(num)
    num == num.to_s.to_i
  end
end


class GuessingGame
  GUESSES = 7
  RANGE = (1..1000)

  def initialize(num_players = 1)
    system 'clear'
    @secret_number = nil
    @winner = nil
    @players = get_players(num_players)
  end

  def get_players(num_players)
    players_arr = []
    1.upto(num_players) do |num|
      print "Alright, player #{num}. "
      players_arr << Player.new(GUESSES)
    end

    players_arr
  end

  def reset
    @secret_number = rand(RANGE)
    @winner = nil
  end

  def remaining_guesses?
    players.map(&:remaining_guesses?).any?(true)
  end

  def play
    reset

    while remaining_guesses?
     @winner = make_guesses
     break if winner
    end

    winner ? win_message : lost_message
  end

  def make_guesses
    players.each do |player|
      player.make_guess(RANGE) if player.remaining_guesses?
      return player.name if correct_guess?(player.guess)
      give_hint(player.guess)
      puts ""
    end

    nil 
  end

  def correct_guess?(guess)
    guess == secret_number
  end

  def give_hint(guess)
    case guess <=> secret_number
    when 1 then puts "Your guess is too high!"
    when -1 then puts "Your guess is too low!"
    end
  end

  def win_message
    puts "You got it, #{winner}! Congrats!"
  end

  def lost_message
    puts "Sorry, everyone's out of guesses!"
    puts "The correct answer was #{secret_number}. Better luck next time!"
  end

  private 
  attr_accessor :players, :secret_number, :winner

end


game = GuessingGame.new(2)
game.play