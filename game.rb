class Game

  attr_reader :players, :current_player

  def initialize
    @players = [
      Player.new('Alex'),
      Player.new('Junaid')
    ]
  end

  def run
    while (not game_over?)
      puts
      puts "=== New Attempt  ==="
      puts
      @current_player = @players.first
      q1 = Question.new(@current_player)
      puts q1.question
      puts q1.answer
      puts
      puts "=== Summary  ==="
      puts
      @players.each do |p|
        puts p.summary
      end
      @players.rotate!
    end
    puts "We have a winner:"
    puts ">>> " + winner[0].name + " !!!"
  end

  def game_over?
    winner.count == 1
  end

  def winner
    @players.select { |p| p.alive? }    
  end

end