require ('minitest/autorun')
require ('minitest/rg')
require_relative('win_lose')
require_relative('players')


class TestWinLose < MiniTest::Test

  def setup
    @winner = WinLose.new(21)
    @loser = WinLose.new(24)
   
  end


  def test_winning_with_21
    message = @winner.end_game
    assert_equal("You've won", message)
  end

  def test_losing_with_over_21
    message = @loser.end_game
    assert_equal("You are a loser", message)
  end
  # def test_losing
  # end

end



# @player = WinLose(player1)
# @player1 = Player.new('Adam')
# @player2 = Player.new('Lewis')
# @winner = WinLose.new(@player1)
# @loser = WinLose.new(@player2)