require ('minitest/autorun')
require ('minitest/rg')
require_relative('players')
require_relative('cards')

class TestPlayers < MiniTest::Test

  def setup
    @cards = Cards.new()
  end

  def test_hash
    assert_equal(@cards, {
  1 => 1,
  2 => 4,
  3 => 6,
  4 => 8
})
  end

end