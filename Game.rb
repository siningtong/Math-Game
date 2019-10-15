class Game 
  def initialize
    @player_1 = Player.new("Kenneth")
    @player_2 = Player.new("Calvin")
    @current_player = @player_1
  end

  def change_player
    if @current_player == @player_1
      return @current_player = @player_2
    else
      return @current_player = @player_1
    end
  end

  def start_rounds
    while @player_1.lives > 0 && @player_2.lives > 0
      q = Question.new
      puts "#{@current_player.name}: what does #{q.number1} plus #{q.number2} equal?"
      userInput = gets.chomp
      userInputNumber = userInput.to_i
      # user input is string
      if (q.number1 + q.number2) == userInputNumber
        puts "#{@current_player.name}: Yes! You are correct"
        puts "#{@player_1.name}: #{@player_1.lives}/3 vs #{@player_2.name}: #{@player_2.lives}/3"
        change_player
      else
        @current_player.change_lives
        if @current_player.lives == 0
          change_player
          winner = @current_player
          puts "#{winner.name} wins with a score of #{winner.lives}/3"
          puts "-----Game Over-----"
          puts "Goodbye"
        else
          puts "#{@current_player.name}: Seriously? No!"
          puts "#{@player_1.name}: #{@player_1.lives}/3 vs #{@player_2.name}: #{@player_2.lives}/3"
          puts "-----NEW TURN-----"
          change_player
        end
      end
    end
  end
end