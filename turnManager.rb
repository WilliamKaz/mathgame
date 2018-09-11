class TurnManager

  def initialize(players)
    @players = players.dup
    @currentPlayer = @players[0];
  end

  def next_turn
    @players.rotate!
    @currentPlayer = @players[0];
    Turn.new(@currentPlayer)
  end

  private
end

class Turn
  attr_reader :asked

  def initialize(asked)
    @asked = asked
  end

end