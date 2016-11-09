require ('minitest/autorun')
require ('minitest/rg')
require_relative('game')

class TestGame < MiniTest::Test

  def setup
    @player1 = Player.new('Adam')
    @player2 = Player.new('Lewis')

  end

  def test_number_of_cards()
    
    assert_equal(56, @deck_of_cards.count)
    # assert_equal(57, cards_to_print.count)
  end

end