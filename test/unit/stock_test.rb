require 'test_helper'

class StockTest < Test::Unit::TestCase
  def test_finds_value
    s = Stock.new('petr4.sa')
    puts s.value
    puts s.change
    puts s.last_twit
  end
end