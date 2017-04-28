class Player
  attr_accessor :name, :health

  def initialize(name)
    @name = name
    @health = 100
  end

   def take_damage
     @health -= rand(1..40)
   end

   def restore_health
  (@health += 20) > 100 ? @health = 100 : @health
   end

end
