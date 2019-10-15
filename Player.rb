class Player
  attr_accessor :lives,:name
  def initialize(name)
    @name = name
    @lives = 3
  end
  def change_lives
    self.lives -= 1
  end
end