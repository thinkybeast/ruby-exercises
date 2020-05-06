# In the previous exercise, you wrote a number guessing game that determines a secret number between 1 and 100, and gives the user 7 opportunities to guess the number.

# Update your solution to accept a low and high value when you create a GuessingGame object, and use those values to compute a secret number for the game. You should also change the number of guesses allowed so the user can always win if she uses a good strategy. You can compute the number of guesses with:

# Math.log2(size_of_range).to_i + 1

class GuessingGame
  attr_reader :range

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
      print "Enter a number between #{range.first} and #{range.last}: "
      guess = gets.chomp.to_i
      break if range === guess
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


game = GuessingGame.new(501, 1500)
game.play