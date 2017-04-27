require_relative 'player'

class Game
  attr_reader :player1, :player2, :current_turn, :next_turn, :players

  def initialize(player1, player2)
    # @player1 = player1
    # @player2 = player2
    @players = [player1, player2]
    @current_turn = @players[0]
    @next_turn = @players[1]
    # @player1 = player1
    # @player2 = player2
    # @current_turn = player1
    # @next_turn = player2
  end

  def attack(player)
    player.take_damage
  end

  def switch_turns
    @players[0], @players[1] = @players[1], @players[0]
    @current_turn = @players[0]
    @next_turn = @players[1]
  end
end
