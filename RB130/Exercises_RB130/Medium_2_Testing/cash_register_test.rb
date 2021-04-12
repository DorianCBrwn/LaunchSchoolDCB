require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test

 def setup
  @cash_register1 = CashRegister.new(1000)
  @purchase1 = Transaction.new(25.00)
  @purchase1.amount_paid = 30.00
 end

 def test_accept_money
  previous_ammount = @cash_register1.total_money
  new_ammount = previous_ammount + @purchase1.amount_paid
  assert_equal new_ammount, @cash_register1.accept_money(@purchase1)
 end

 def test_change
  assert_equal (@purchase1.amount_paid - @purchase1.item_cost), @cash_register1.change(@purchase1)
 end

 def test_give_receipt
  item_cost = 10
  purchase1 = Transaction.new(item_cost)
  assert_output ("You've paid $#{item_cost}.\n"){ || @cash_register1.give_receipt(purchase1)}
 end
end