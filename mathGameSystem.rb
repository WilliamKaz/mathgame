require './mathGameSetup.rb'
require './turnManager.rb'

class Game

  def initialize
    @p1 = Player.new('Brian')
    @p2 = Player.new('Wilson')
    @turn_manager = TurnManager.new(self.players)
  end

  def players
    [@p1, @p2]
  end

  def game_over?
    players.any? {|are| are.dead? }
  end

  def find_winner
    players.select { |are| !are.dead? }.first
  end

 def summary
    summary = players.map { |playr| playr.summary }.join("\n")
    """
----- SUMMARY -----
#{summary}
-------------------
    """
  end
  def run
    while !game_over?
      turn = @turn_manager.next_turn
      thisQuestion = Question.new
      puts
      puts "#{turn.asked.name}'s Turn!"
      puts
      puts "#{turn.asked.name}, #{thisQuestion.questionAsked}"
      turn.asked.myAnswer = gets.chomp
      if turn.asked.myAnswer != thisQuestion.answer
        turn.asked.lives -= 1
      end
      puts summary

    end
     winner = find_winner
     puts "#{winner.name} has HAS WON THE ROBOT FIGHT!! .... Sorry I mean the math battle"
  end

end


game = Game.new

game.run