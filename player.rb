class Player

  attr_reader :name, :alive, :life

  def initialize(name)
    @name = name
    @life = 3
  end

  def lose_a_life
    @life -= 1
  end

  def alive?
    @life > 0
  end

  def summary
    "#{name}: #{@life}/3 lives"
  end

end