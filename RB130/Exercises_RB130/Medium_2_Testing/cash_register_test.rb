require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test

 def setup
  @cash_register1 = CashRegister.new(100)
  @purchase1 = Transaction.new(25.00)
  @purchase1.amount_paid = 25.00
 end

 def test_accept_money
  assert_equal 125, @cash_register1.accept_money(@purchase1)
 end
end