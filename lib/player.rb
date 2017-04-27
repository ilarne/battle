class Player
  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = 30
  end

   def take_damage
     @health -= 10
   end
end
