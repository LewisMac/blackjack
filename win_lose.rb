require_relative('players')

# attr_reader :player_value

class WinLose

  def initialize(player)
    @player_value = player
    # @player.adds_card_values = @player_value
  end

  def end_game
    if @player_value > 21 
      answer = "You are a loser"
    elsif @player_value <= 21
      answer = "You've won"
    end
        
  return answer 
  end











end