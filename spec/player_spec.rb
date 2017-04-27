require 'player'
require 'game'

describe Player do
  subject(:player) { described_class.new("Bob") }
  let(:game) { Game.new(Player.new("Fred"), Player.new("Jim")) }

  describe '#name' do
    it 'returns the correct name' do
      expect(player.name).to eq "Bob"
    end
  end

  describe '#health' do
    it 'reduces health by 10' do
    game.attack(game.next_turn)
    expect(game.next_turn.health).to eq 20
  end
 end
end
