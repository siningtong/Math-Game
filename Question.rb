class Question
  attr_reader :number1,:number2
  def initialize()
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end
end