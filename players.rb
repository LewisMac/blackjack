class Player

  attr_reader :name

  def initialize(name)
    @name = name
    @cards = []
  end

  def card_count()
    return @cards.count
  end

  def holds_cards(cards)
    return @cards << cards
  end

  def adds_card_values

    cards_sum = 0
    for values in @cards do
      cards_sum += values
    end
    return cards_sum
  end





end