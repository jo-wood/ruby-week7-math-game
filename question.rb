class Question

  attr_reader  :current_question, :current_player, :current_answer


  def initialize player
    @current_player = player
    @operations = ['plus', 'minus', 'multiply', 'divide']
    @current_answer
  end

  def generate_random_number
    rand(10) + 1
  end

  def generate_random_operation
    @operations[0]
  end

  def question
    number_one = generate_random_number
    number_two = generate_random_number
    current_operation = generate_random_operation
    question = "#{number_one} #{current_operation} #{number_two}"
    @current_answer = (number_one + number_two)

    @current_question = "#{@current_player.name}: #{question}?"
  end

  def answer
    player_answer = gets.chomp.to_i
    if @current_answer == player_answer
      return "You got it!"
    else
      @current_player.lose_a_life
      return "EEEHHHHHHNNNNNNNN"
    end
  end

end