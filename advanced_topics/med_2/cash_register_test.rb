require 'stringio'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  attr_reader :register, :transaction

  def setup
    @register = CashRegister.new(100)
    @transaction = Transaction.new(50)
  end

  def test_accept_money
    transaction.amount_paid = 50
    previous_total = register.total_money
    new_total = register.accept_money(transaction)

    assert_equal(previous_total + 50, new_total)   
  end

  def test_change
    amount_paid = 70
    item_cost = 50
    transaction.amount_paid = amount_paid

    assert_equal(amount_paid - item_cost, register.change(transaction))
  end

  def test_give_receipt
    item_cost = 35
    new_transaction = Transaction.new(item_cost)
    expected_str = "You've paid $#{item_cost}.\n"
    assert_output(expected_str) { register.give_receipt(new_transaction) }
  end

  def test_prompt_for_payment
    input = StringIO.new("70")
    output = StringIO.new
    @transaction.prompt_for_payment(input: input, output: output) 
    assert_equal(70, transaction.amount_paid)
  end



end