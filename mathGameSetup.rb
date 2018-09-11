class Player
  # gives the players lives and allows them to be public
  attr_accessor :name
  attr_accessor :myAnswer
  attr_accessor :lives
  def initialize(name)
    @name = name
    @id
    @lives = 3
    @myAnswer = nil
  end

  def dead?
    @lives <= 0
  end

  def summary
    "HP: #{@lives}/3"
  end

end

#test code
# p1 = Player.new
# p2 = Player.new

# puts p1.lives
# puts p2.lives

class Question

  attr_reader :num1
  attr_reader :num2
  attr_reader :questionAsked
  attr_reader :answer
  def initialize()
    @num1 = rand(21)
    @num2 = rand(21)
    @questionAsked = "What is #{num1} + #{num2} ?"
    @answer = @num1 + @num2
  end

end



#test code
# q1 = Question.new
# puts q1.questionAsked
# puts q1.num1
# puts q1.num2
# puts q1.answer