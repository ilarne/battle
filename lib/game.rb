require_relative 'player'

class Game
  attr_reader :player1, :player2, :current_turn, :next_turn, :players

  def self.start(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.current_game
    @game
  end

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = @players[0]
    @next_turn = @players[1]
  end

  def attack(player)
    player.take_damage
  end

  def heal(player)
    player.restore_health
  end

  def switch_turns
    @players[0], @players[1] = @players[1], @players[0]
    @current_turn = @players[0]
    @next_turn = @players[1]
      # @players.reverse!
  end
end
