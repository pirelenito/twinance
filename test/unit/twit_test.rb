require 'test_helper'

class TwitTest < Test::Unit::TestCase
  def test_finds_stuff
    assert Twit.find("stuff", 10)
  end
  
  def test_find_last
    puts Twit.last("petr4").message
  end
end