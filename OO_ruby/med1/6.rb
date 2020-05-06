# Create an object-oriented number guessing class for numbers in the range 1 to 100, with a limit of 7 guesses per game. The game should play like this:

class GuessingGame

  def initialize(lowest, highest)
    @secret_number = nil
    @range = (lowest..highest)
  end

  def play
    # intialize counter for guesses
    # ask player for a number
    # check whether that number is correct
    # if so, break
    # if not, decrement
    # break when counter == 0
    # if counter > 0, message win, else message loss
    @secret_number = rand(range)
    remaining_guesses = Math.log2(range.size).to_i + 1

    while remaining_guesses > 0 do
      puts "You have #{remaining_guesses} guesses remaining."
      guess = ask_for_number
      break if correct_guess?(guess)
      give_hint(guess)
      remaining_guesses -= 1
    end

    remaining_guesses > 0 ? win_message : lost_message
  end

  def ask_for_number
    guess = nil

    loop do
      print "Enter a number between 1 and 100: "
      guess = gets.chomp.to_i
      break if (1..100) === guess
      print "Invalid guess. "
    end

    guess
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
    puts "That's the one! You win!"
  end

  def lost_message
    puts "Sorry, you're out of guesses!"
    puts "The correct answer was #{secret_number}. Better luck next time!"
  end

  private 
  attr_accessor :secret_number

end


game = GuessingGame.new
game.play