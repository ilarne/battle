class Player
  attr_reader :name
  attr_accessor :health

  def initialize(name)
    @name = name
    @health = 30
  end

  # def take_damage
  #   @health -= 10
  # end
end
