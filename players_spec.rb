require ('minitest/autorun')
require ('minitest/rg')
require_relative('players')


class TestPlayers < MiniTest::Test

  def setup
    @player1 = Player.new('Adam')
    @player2 = Player.new('Lewis')
   
  end

  def test_starts_with_no_cards
    assert_equal(0, @player1.card_count)
  end

  def test_give_player_cards
    card1 = 3
    card2 = 5

    @player1.holds_cards(card1)
    @player1.holds_cards(card2)

    assert_equal(2, @player1.card_count)
  end

  def test_player_cards_value
    card = 3

    assert_equal([3], @player1.holds_cards(card))
  end

  def test_can_have_two_players
    assert_equal('Adam', @player1.name)
    assert_equal('Lewis', @player2.name)
  end

  def test_both_players_get_correct_cards
    card1 = 3
    card2 = 5

    assert_equal([3], @player1.holds_cards(card1))
    assert_equal([5], @player2.holds_cards(card2))
  end

  def test_add_all_cards
    card1 = 1
    card2 = 2
    @player1.holds_cards(card1)
    @player1.holds_cards(card2)

    assert_equal(3, @player1.adds_card_values)
  end

  def test_add_all_cards_all_players
    card1 = 1
    card2 = 2
    card3 = 3
    card4 = 4

    @player1.holds_cards(card1)
    @player1.holds_cards(card2)
    @player2.holds_cards(card3)
    @player2.holds_cards(card4)


    assert_equal(3, @player1.adds_card_values)
    assert_equal(7, @player2.adds_card_values)
  end





 
end
