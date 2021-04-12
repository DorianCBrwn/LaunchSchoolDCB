require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class Transaction_Test < Minitest::Test
  def test_prompt_for_payment
    transaction1 = Transaction.new(20)
    payment_input = StringIO.new("30 \n")
    payment_output = StringIO.new
    transaction1.prompt_for_payment(input: payment_input, output: payment_output)
    assert_equal 30, transaction1.amount_paid
  end
end