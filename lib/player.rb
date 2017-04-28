class Player
  attr_accessor :name, :health

  def initialize(name)
    @name = name
    @health = 100
  end

   def take_damage
     @health -= rand(41)
   end
end
