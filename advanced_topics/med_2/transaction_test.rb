require 'minitest/autorun'
# require 'minitest/reporters'
# Minitest::Reporters.use!

require_relative 'transaction'

class TransactionTest < Minitest::Test
  attr_reader :transaction

  def setup
    @transaction = Transaction.new(50)
  end

    def test_prompt_for_payment
      io = StringIO.new("-40\n10\n70")
       output = <<~OUTPUT.chomp
            You owe $50.
            How much are you paying?
            That is not the correct amount. Please make sure to pay the full cost.
            You owe $50.
            How much are you paying?
            That is not the correct amount. Please make sure to pay the full cost.
            You owe $50.
            How much are you paying?

          OUTPUT

     

      assert_output(output) {  transaction.prompt_for_payment(input: io) }
      assert_equal(70, transaction.amount_paid)
      io.close
  
    end
end